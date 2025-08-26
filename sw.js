const CACHE_NAME = 'ffxiv-tool-v2';
const urlsToCache = [
  '/',
  '/index.html',
  '/manifest.json',
  '/icon-32.png',
  '/icon-192.png',
  '/icon-512.png',
  '/de/index.html',
  '/en/index.html',
  '/es/index.html',
  '/fr/index.html',
  '/it/index.html',
  '/ja/index.html',
  '/ko/index.html',
  '/pt/index.html',
  '/ru/index.html'
];

// Install Service Worker
self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(cache => {
        console.log('Cache opened - FFXIV Tool v2');
        return cache.addAll(urlsToCache.map(url => {
          return new Request(url, {cache: 'reload'});
        }));
      })
      .catch(error => {
        console.error('Failed to cache:', error);
      })
  );
  // Force the waiting service worker to become the active service worker
  self.skipWaiting();
});

// Fetch event - Serve from cache when offline
self.addEventListener('fetch', event => {
  event.respondWith(
    caches.match(event.request)
      .then(response => {
        // Cache hit - return response
        if (response) {
          return response;
        }

        // Clone the request because it's a stream
        const fetchRequest = event.request.clone();

        return fetch(fetchRequest).then(response => {
          // Check if we received a valid response
          if (!response || response.status !== 200 || response.type !== 'basic') {
            return response;
          }

          // Clone the response because it's a stream
          const responseToCache = response.clone();

          caches.open(CACHE_NAME)
            .then(cache => {
              cache.put(event.request, responseToCache);
            });

          return response;
        }).catch(() => {
          // If fetch fails (offline), try to return from cache
          return caches.match('/index.html');
        });
      }
    )
  );
});

// Activate and clean old caches
self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys().then(cacheNames => {
      return Promise.all(
        cacheNames.map(cacheName => {
          if (cacheName !== CACHE_NAME) {
            console.log('Deleting old cache:', cacheName);
            return caches.delete(cacheName);
          }
        })
      );
    }).then(() => {
      // Take control of all pages immediately
      return self.clients.claim();
    })
  );
});

// Handle messages from the main thread
self.addEventListener('message', event => {
  if (event.data && event.data.type === 'SKIP_WAITING') {
    self.skipWaiting();
  }
});

// Background sync (if supported)
self.addEventListener('sync', event => {
  if (event.tag === 'background-sync') {
    event.waitUntil(doBackgroundSync());
  }
});

async function doBackgroundSync() {
  // Update cache with latest files when back online
  try {
    const cache = await caches.open(CACHE_NAME);
    const requests = urlsToCache.map(url => fetch(url, {cache: 'no-cache'}));
    const responses = await Promise.allSettled(requests);
    
    responses.forEach((response, index) => {
      if (response.status === 'fulfilled' && response.value.ok) {
        cache.put(urlsToCache[index], response.value);
      }
    });
  } catch (error) {
    console.error('Background sync failed:', error);
  }
}
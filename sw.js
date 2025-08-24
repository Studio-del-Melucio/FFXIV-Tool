const CACHE_NAME = 'ffxiv-tool-v1';
const urlsToCache = [
  '/',
  '/index.html',
  '/manifest.json',
  '/de/index.html',
  '/en/index.html',
  '/es/index.html',
  '/fr/index.html',
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
        console.log('Cache geöffnet'); 
        return cache.addAll(urlsToCache);
      })
  );
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
        return fetch(event.request);
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
            return caches.delete(cacheName);
          }
        })
      );
    })
  );
});
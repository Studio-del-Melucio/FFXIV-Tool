# FFXIV Class Selection Tool 🎮⚔️

A multilingual, interactive tool to help new players find their perfect class in Final Fantasy XIV.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Languages](https://img.shields.io/badge/Languages-8-brightgreen.svg)](#available-languages)
[![FFXIV](https://img.shields.io/badge/FFXIV-Dawntrail-blue.svg)](https://www.finalfantasyxiv.com/)

## 🌟 Features

- **8 Languages**: English, German, French, Spanish, Portuguese (BR), Russian, Japanese, Korean
- **Interactive Decision Tree**: Simple questions lead to personalized class recommendations
- **Mobile Responsive**: Works perfectly on all devices
- **PWA Support**: Install as an app on mobile devices
- **No Installation Required**: Runs directly in the browser
- **Offline Capable**: Works without internet connection (after first load)
- **PowerShell Version**: Alternative command-line tool for Windows users

## 🌍 Available Languages

| Language | Flag | Status | Native Name |
|----------|------|--------|-------------|
| English | 🇺🇸 | ✅ Complete | English |
| German | 🇩🇪 | ✅ Complete | Deutsch |
| French | 🇫🇷 | ✅ Complete | Français |
| Spanish | 🇪🇸 | ✅ Complete | Español |
| Portuguese | 🇧🇷 | ✅ Complete | Português |
| Russian | 🇷🇺 | ✅ Complete | Русский |
| Japanese | 🇯🇵 | ✅ Complete | 日本語 |
| Korean | 🇰🇷 | ✅ Complete | 한국어 |

## 🚀 Live Demo

**[Try it here!](https://studio-del-melucio.github.io/FFXIV-Tool/)**

## 💻 Installation & Usage

### Web Version (Recommended)

#### Online Usage
Simply visit the [live demo](https://studio-del-melucio.github.io/FFXIV-Tool/) - no installation needed!

#### Local Installation

1. Clone the repository:
```bash
git clone https://github.com/studio-del-melucio/FFXIV-Tool.git
```

2. Navigate to the project folder:
```bash
cd FFXIV-Tool/Web
```

3. Open `index.html` in your browser or use a local server:
```bash
# Using Python
python -m http.server 8000

# Using Node.js
npx serve
```

4. Open `http://localhost:8000` in your browser

### PowerShell Version (Windows)

For Windows users who prefer command-line tools:

1. Navigate to the `PowerShell` folder
2. Run the appropriate `.bat` file:
   - **English**: `FFXIV-Class-Selector.bat`
   - **German**: `FFXIV-Klassen-Wahl.bat`
3. Follow the prompts in the console

## 📁 Project Structure

```
FFXIV-Tool/
├── Web/                    # Browser-based version
│   ├── index.html         # Language selection page
│   ├── sw.js             # Service Worker for PWA
│   ├── de/               # German version
│   │   └── index.html
│   ├── en/               # English version
│   │   └── index.html
│   ├── es/               # Spanish version
│   │   └── index.html
│   ├── fr/               # French version
│   │   └── index.html
│   ├── ja/               # Japanese version
│   │   └── index.html
│   ├── ko/               # Korean version
│   │   └── index.html
│   ├── pt/               # Portuguese version
│   │   └── index.html
│   └── ru/               # Russian version
│       └── index.html
├── PowerShell/            # Windows command-line version
│   ├── FFXIV-Class-Selector.bat
│   ├── FFXIV-Class-Selector.ps1
│   ├── FFXIV-Klassen-Wahl.bat
│   └── FFXIV-Klassen-Wahl.ps1
├── LICENSE               # MIT License
└── README.md            # This file
```

## 🎯 How It Works

The tool uses a decision tree approach with 3-4 simple questions:

1. **Main Role**: Help others or deal damage?
2. **Sub-Role**: Specific preference within the role
3. **Play Style**: Combat style preference
4. **Result**: 2-3 recommended classes with descriptions

### Example Flow:
```
Help Others → Heal → Direct Healing → White Mage or Astrologian
Deal Damage → Melee → Heavy Hits → Dragoon, Samurai, or Reaper
```

## 🛠️ Technologies Used

- **HTML5** - Structure and PWA capabilities
- **CSS3** - Responsive design with gradients and animations
- **Vanilla JavaScript** - No dependencies, lightweight
- **Progressive Web App** - Installable and offline-capable
- **Service Worker** - Offline functionality
- **PowerShell** - Windows scripting version

## 📱 PWA Installation

### Mobile (Android/iOS)
1. Visit the site in Chrome/Safari
2. Tap "Add to Home Screen" or install prompt
3. The app will install and work offline

### Desktop (Chrome/Edge)
1. Visit the site
2. Click the install icon in the address bar
3. Follow the prompts

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

### Adding a New Language

1. Copy an existing language folder (e.g., `Web/en/`)
2. Rename it with the appropriate language code
3. Translate all text in the `index.html` file
4. Update the main `Web/index.html` language selector
5. Update this README with the new language
6. Submit a PR with your changes

### Development Guidelines

- Keep the code vanilla (no frameworks)
- Maintain responsive design
- Test on multiple devices
- Ensure offline functionality works
- Follow the existing code style

## 📊 Browser Support

- ✅ Chrome/Edge (recommended)
- ✅ Firefox
- ✅ Safari
- ✅ Opera
- ✅ Mobile browsers

## 🎮 About FFXIV Classes

This tool covers all classes available as of the Dawntrail expansion (2024):

### Tanks
- Paladin, Warrior, Dark Knight, Gunbreaker

### Healers
- White Mage, Scholar, Astrologian, Sage

### Melee DPS
- Monk, Dragoon, Ninja, Samurai, Reaper, Viper

### Physical Ranged DPS
- Bard, Machinist, Dancer

### Magical Ranged DPS
- Black Mage, Summoner, Red Mage, Pictomancer

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Credits

- **Developer**: Studio del Melucio
- **Game**: Final Fantasy XIV © Square Enix
- **Community**: Thanks to the FFXIV community for feedback
- **Translations**: Made via translator. Please send feedback if there's anything not correct.

## ⚠️ Disclaimer

This is an unofficial fan-made tool. Final Fantasy XIV is a registered trademark of Square Enix Holdings Co., Ltd. All game content and assets are property of Square Enix.

## 📞 Contact & Social Media

### Get in Touch
- **Email**: studio.del.melucio@gmail.com
- **Discord**: studiodelmelucio
- **GitHub**: [@Studio-del-Melucio](https://github.com/Studio-del-Melucio)

### Follow Development
- **Twitter/X**: [@St_del_Melucio](https://twitter.com/St_del_Melucio)
- **Reddit**: [u/StudioDelMelucio](https://reddit.com/user/StudioDelMelucio)
- **Facebook**: [Studio del Melucio](https://facebook.com/StudioDelMelucio)

### Support the Project
- ⭐ **Star this repository** if you find it helpful!
- 🐛 **Report bugs** via [GitHub Issues](https://github.com/Studio-del-Melucio/FFXIV-Tool/issues)
- 💡 **Request features** in the [Discussions](https://github.com/Studio-del-Melucio/FFXIV-Tool/discussions)
- 🌍 **Contribute translations** via Pull Request

### In-Game
- **Server**: Shiva (Light DC)
- **Character**: Menelaus Mellaus

---

## 🚀 Future Plans

- [ ] Add more detailed class descriptions
- [ ] Include job evolution paths
- [ ] Add Chinese translation (simplified/traditional)
- [ ] Add community voting for class recommendations

## 📈 Stats

![GitHub last commit](https://img.shields.io/github/last-commit/studio-del-melucio/FFXIV-Tool)
![GitHub repo size](https://img.shields.io/github/repo-size/studio-del-melucio/FFXIV-Tool)
![GitHub stars](https://img.shields.io/github/stars/studio-del-melucio/FFXIV-Tool?style=social)

---

<div align="center">
Made with ❤️ by Studio del Melucio © 2025

**For Eorzea!** 🌟
</div>
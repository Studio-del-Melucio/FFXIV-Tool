# \# FFXIV Class Selection Tool 🎮⚔️

# 

# A multilingual, interactive tool to help new players find their perfect class in Final Fantasy XIV.

# 

# \[!\[License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# \[!\[Languages](https://img.shields.io/badge/Languages-6-brightgreen.svg)](#available-languages)

# \[!\[FFXIV](https://img.shields.io/badge/FFXIV-Dawntrail-blue.svg)](https://www.finalfantasyxiv.com/)

# 

# \## 🌟 Features

# 

# \- \*\*6 Languages\*\*: English, German, French, Spanish, Portuguese (BR), Russian

# \- \*\*Interactive Decision Tree\*\*: Simple questions lead to personalized class recommendations

# \- \*\*Mobile Responsive\*\*: Works perfectly on all devices

# \- \*\*PWA Support\*\*: Install as an app on mobile devices

# \- \*\*No Installation Required\*\*: Runs directly in the browser

# \- \*\*Offline Capable\*\*: Works without internet connection (after first load)

# 

# \## 🌍 Available Languages

# 

# | Language | Flag | Status |

# |----------|------|--------|

# | English | 🇺🇸 | ✅ Complete |

# | Deutsch | 🇩🇪 | ✅ Complete |

# | Français | 🇫🇷 | ✅ Complete |

# | Español | 🇪🇸 | ✅ Complete |

# | Português (BR) | 🇧🇷 | ✅ Complete |

# | Русский | 🇷🇺 | ✅ Complete |

# | 日本語 | 🇯🇵 | 🔄 Coming Soon |

# | 한국어 | 🇰🇷 | 🔄 Coming Soon |

# 

# \## 🚀 Live Demo

# 

# \*\*\[Try it here!](https://studio-del-melucio.github.io/ffxiv-tool/)\*\*

# 

# \## 💻 Local Installation

# 

# \### Web Version (Recommended)

# 

# 1\. Clone the repository:

# ```bash

# git clone https://github.com/studio-del-melucio/ffxiv-tool.git

# ```

# 

# 2\. Navigate to the project folder:

# ```bash

# cd ffxiv-tool

# ```

# 

# 3\. Open `index.html` in your browser or use a local server:

# ```bash

# \# Using Python

# python -m http.server 8000

# 

# \# Using Node.js

# npx serve

# ```

# 

# 4\. Open `http://localhost:8000` in your browser

# 

# \### PowerShell Version (Windows Only)

# 

# 1\. Download `FFXIV-Char-Wahl.ps1` and `FFXIV-Char-Wahl.bat`

# 2\. Run the `.bat` file (double-click)

# 3\. Follow the prompts in the console

# 

# \## 📁 Project Structure

# 

# ```

# ffxiv-tool/

# ├── index.html           # Language selection page

# ├── sw.js               # Service Worker for PWA

# ├── manifest.json       # PWA manifest

# ├── README.md          # This file

# ├── LICENSE            # MIT License

# ├── icons/             # App icons

# │   ├── icon-192.png

# │   └── icon-512.png

# ├── en/               # English version

# │   └── index.html

# ├── de/               # German version

# │   └── index.html

# ├── fr/               # French version

# │   └── index.html

# ├── es/               # Spanish version

# │   └── index.html

# ├── pt/               # Portuguese version

# │   └── index.html

# └── ru/               # Russian version

# &nbsp;   └── index.html

# ```

# 

# \## 🎯 How It Works

# 

# The tool uses a decision tree approach with 3-4 simple questions:

# 

# 1\. \*\*Main Role\*\*: Help others or deal damage?

# 2\. \*\*Sub-Role\*\*: Specific preference within the role

# 3\. \*\*Play Style\*\*: Combat style preference

# 4\. \*\*Result\*\*: 2-3 recommended classes with descriptions

# 

# \### Example Flow:

# ```

# Help Others → Heal → Direct Healing → White Mage or Astrologian

# Deal Damage → Melee → Heavy Hits → Dragoon, Samurai, or Reaper

# ```

# 

# \## 🛠️ Technologies Used

# 

# \- \*\*HTML5\*\* - Structure and PWA capabilities

# \- \*\*CSS3\*\* - Responsive design with gradients and animations

# \- \*\*Vanilla JavaScript\*\* - No dependencies, lightweight

# \- \*\*Progressive Web App\*\* - Installable and offline-capable

# \- \*\*Service Worker\*\* - Offline functionality

# 

# \## 📱 PWA Installation

# 

# \### Mobile (Android/iOS)

# 1\. Visit the site in Chrome/Safari

# 2\. Tap "Add to Home Screen"

# 3\. The app will install and work offline

# 

# \### Desktop (Chrome/Edge)

# 1\. Visit the site

# 2\. Click the install icon in the address bar

# 3\. Follow the prompts

# 

# \## 🤝 Contributing

# 

# Contributions are welcome! Please feel free to submit a Pull Request.

# 

# \### Adding a New Language

# 

# 1\. Copy an existing language folder (e.g., `en/`)

# 2\. Rename it with the appropriate language code

# 3\. Translate all text in the `index.html` file

# 4\. Update the main `index.html` language selector

# 5\. Submit a PR with your changes

# 

# \## 📜 License

# 

# This project is licensed under the MIT License - see the \[LICENSE](LICENSE) file for details.

# 

# \## 🙏 Credits

# 

# \- \*\*Developer\*\*: Studio del Melucio

# \- \*\*Game\*\*: Final Fantasy XIV © Square Enix

# \- \*\*Community\*\*: Thanks to the FFXIV community for feedback

# 

# \## ⚠️ Disclaimer

# 

# This is an unofficial fan-made tool. Final Fantasy XIV is a registered trademark of Square Enix Holdings Co., Ltd.

# 

# \## 📞 Contact

# 

# \- \*\*GitHub\*\*: \[@studio-del-melucio](https://github.com/studio-del-melucio)

# \- \*\*Project\*\*: \[FFXIV Class Selection Tool](https://github.com/studio-del-melucio/ffxiv-tool)

# 

# \## 🎮 About FFXIV

# 

# Final Fantasy XIV is a massively multiplayer online role-playing game (MMORPG) developed and published by Square Enix. The game features a rich story, diverse classes, and an active community.

# 

# \*\*Official Website\*\*: \[finalfantasyxiv.com](https://www.finalfantasyxiv.com/)

# 

# ---

# 

# Made with ❤️ by Studio del Melucio © 2025


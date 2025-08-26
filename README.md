# ⚔️ FFXIV Class Selection Tool v1.5

**Find your perfect class in Eorzea!** A multilingual, interactive tool to help new and returning Final Fantasy XIV players discover their ideal job based on their playstyle preferences.

[![Live Demo](https://img.shields.io/badge/Live%20Demo-Visit%20Site-blue?style=for-the-badge)](https://studio-del-melucio.github.io/FFXIV-Tool/)
[![Version](https://img.shields.io/badge/Version-1.5-green?style=for-the-badge)]()
[![Languages](https://img.shields.io/badge/Languages-9-orange?style=for-the-badge)]()
[![PWA](https://img.shields.io/badge/PWA-Ready-purple?style=for-the-badge)]()

## 🌟 Features

### 🎯 **Smart Class Recommendation**
- Interactive questionnaire with 3-4 simple questions
- Personalized results based on playstyle preferences
- **NEW**: Results categorized into **Beginner** and **Advanced** sections
- Detailed gameplay descriptions for each recommended class

### 🌍 **Multilingual Support**
Available in **9 languages**:
- 🇺🇸 **English**
- 🇩🇪 **German** (Deutsch)
- 🇫🇷 **French** (Français) 
- 🇪🇸 **Spanish** (Español)
- 🇮🇹 **Italian** (Italiano) ⭐ *NEW in v1.5*
- 🇧🇷 **Portuguese** (Português)
- 🇷🇺 **Russian** (Русский)
- 🇯🇵 **Japanese** (日本語)
- 🇰🇷 **Korean** (한국어)

### 📱 **Progressive Web App**
- **Offline functionality** - works without internet connection
- **Installable** on mobile devices and desktop
- **Responsive design** optimized for all screen sizes
- **Fast loading** with service worker caching

### 🎮 **FFXIV Job Coverage**
Covers all **20+ jobs** across all roles:
- **🛡️ Tanks:** Paladin, Warrior, Dark Knight, Gunbreaker
- **💚 Healers:** White Mage, Scholar, Astrologian, Sage
- **⚔️ Melee DPS:** Monk, Dragoon, Ninja, Samurai, Reaper, Viper
- **🏹 Ranged Physical DPS:** Bard, Machinist, Dancer
- **🔥 Magical DPS:** Black Mage, Summoner, Red Mage, Pictomancer

## 🆕 What's New in v1.5

### **Enhanced User Experience**
- 🇮🇹 **Italian language support** added
- 👶 **Beginner/Advanced categorization** for better guidance
- ⚡ **Simplified tank selection** - shows all 4 tanks directly
- 📝 **Completely rewritten class descriptions** with concrete gameplay features

### **Technical Improvements**  
- 📱 **Better mobile layout** with repositioned footer
- ⚙️ **Enhanced PWA functionality** and offline caching
- 🔧 **Updated service worker** with improved background sync
- 🎯 **Accurate class information** (e.g., Astrologian card mechanics corrected)

## 🚀 Getting Started

### **Online Usage**
Simply visit: **[https://studio-del-melucio.github.io/FFXIV-Tool/](https://studio-del-melucio.github.io/FFXIV-Tool/)**

### **Install as App**
1. Visit the website on your device
2. Look for the "Install" prompt or browser menu option
3. Add to home screen for offline access

### **Local Development**
```bash
# Clone the repository
git clone https://github.com/Studio-del-Melucio/FFXIV-Tool.git

# Navigate to project directory
cd FFXIV-Tool

# Serve locally (using any static file server)
# Example with Python:
python -m http.server 8000

# Or with Node.js http-server:
npx http-server
```

## 🏗️ Project Structure

```
/
├── index.html          # Language selection page
├── manifest.json       # PWA manifest
├── sw.js              # Service worker
├── icon-*.png         # App icons
├── de/index.html      # German version
├── en/index.html      # English version  
├── es/index.html      # Spanish version
├── fr/index.html      # French version
├── it/index.html      # Italian version
├── ja/index.html      # Japanese version
├── ko/index.html      # Korean version
├── pt/index.html      # Portuguese version
└── ru/index.html      # Russian version
```

## 🛠️ Technologies Used

- **Frontend:** Vanilla HTML5, CSS3, JavaScript (ES6+)
- **PWA:** Service Worker, Web App Manifest
- **Styling:** CSS Grid, Flexbox, CSS Animations
- **Internationalization:** Native HTML lang attributes
- **Deployment:** GitHub Pages

## 🤝 Contributing

This is a **community-driven, non-commercial project**! Contributions are very welcome:

### **Ways to Contribute:**
- 🐛 **Bug reports** - Found an issue? Let me know!
- 💡 **Feature suggestions** - Ideas for improvements
- 🌍 **Translation improvements** - Native speaker corrections
- 📝 **Content updates** - Job descriptions, meta changes
- 🔧 **Code contributions** - Pull requests welcome

### **How to Contribute:**
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 🎯 Roadmap

- [ ] **More languages** (Chinese, etc.)
- [ ] **Community voting on job descriptions**
- [ ] **Dark mode theme**

## 🏷️ Version History

### **v1.5** - Enhanced Experience Update *(Current)*
- Added Italian language support
- Introduced beginner/advanced categorization
- Simplified tank selection flow
- Completely rewritten class descriptions
- Enhanced PWA functionality

### **v1.0** - Initial Release
- Multi-language support (8 languages)
- Basic class recommendation system
- PWA functionality
- Responsive design

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

## ⚖️ Disclaimer

**Final Fantasy XIV** and all related content are owned by **Square Enix**. This tool is a fan-made project and is not affiliated with or endorsed by Square Enix.

## 🙏 Acknowledgments

- **Square Enix** for creating the amazing world of FFXIV
- **FFXIV Community** for feedback and suggestions
- **r/ffxiv subreddit** for early testing and support
- All contributors who helped improve translations and features

## 📧 Contact

**Studio del Melucio**
- GitHub: [@Studio-del-Melucio](https://github.com/Studio-del-Melucio)
- Project Link: [https://github.com/Studio-del-Melucio/FFXIV-Tool](https://github.com/Studio-del-Melucio/FFXIV-Tool)
- Twitter / X: https://x.com/St_del_Melucio
- Reddit: https://www.reddit.com/user/StudioDelMelucio/

---

**Made with ❤️ by the FFXIV community, for the FFXIV community**

*Find your calling in Eorzea! ⚔️*
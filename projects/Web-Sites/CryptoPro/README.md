# CryptoPro - Professional Cryptocurrency Platform (React Edition)

<img width="2752" height="1434" alt="CryptoPro preview" src="https://github.com/user-attachments/assets/4fbfcc2e-5f4c-4135-b935-26d47a6c6613" />

![CryptoPro Preview](https://img.shields.io/badge/CryptoPro-Professional%20Crypto%20Platform-blue)
![React](https://img.shields.io/badge/React-18-61DAFB?logo=react&logoColor=black)
![Bootstrap](https://img.shields.io/badge/Bootstrap-5.3-7952B3?logo=bootstrap&logoColor=white)
![Babel](https://img.shields.io/badge/Babel-standalone-F9DC3E?logo=babel&logoColor=black)
![JavaScript](https://img.shields.io/badge/JavaScript-ES6+-F7DF1E?logo=javascript&logoColor=black)
![Responsive](https://img.shields.io/badge/Responsive-Yes-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

A complete cryptocurrency platform rebuilt with **React.js** and **Bootstrap**, delivering a modular, state‑driven interface inspired by leading exchanges.

## 🌟 Demo

[![View Demo](https://img.shields.io/badge/View-Live%20Demo-brightgreen)](https://github.com/marcio-marine-corps-soldier/technology/blob/main/projects/Web-Sites/CryptoPro/assets/FireShot%20Capture%20002%20-%20CryptoPro%20-%20Cryptocurrency%20Platform%20-%20%5B%5D.png)

## ✨ Features

### 📱 Modern Interface
- **Responsive Design** – adapts perfectly to desktop, tablet, and mobile.
- **Black/Blue Palette** – professional and sophisticated look.
- **Smooth Animations** – scroll‑triggered fade‑ins and interactive transitions.
- **Intuitive Navigation** – smooth scrolling between sections with React event handling.

### 💼 Main Sections (all built as React components)
1. **Hero Section** – impactful message with a simulated balance card and live price preview.
2. **Trade Anywhere** – app download section with QR code, store buttons, and desktop platform badges.
3. **Features** – 6 compelling reasons to choose the platform.
4. **Market Data** – real‑time quotes that update automatically every 5 seconds (simulated).
5. **24/7 Support** – support cards, community channels, and satisfaction stats.
6. **FAQ** – interactive accordion where only one answer is expanded at a time.
7. **Final CTA** – optimized call to action to create an account.

### 🔄 Interactive Features (now powered by React hooks)
- **Live Market Simulation** – `useMarketData` hook generates dynamic price changes.
- **FAQ Accordion** – state‑controlled expansion, smooth height transitions.
- **Scroll Animations** – custom `useScrollFadeIn` hook using Intersection Observer.
- **Smooth Navigation** – anchor links handled with `window.scrollTo()` and event prevention.

## 🛠️ Technologies Used

| Technology      | Role                                                                 |
|-----------------|----------------------------------------------------------------------|
| **React 18**    | Component‑based UI, hooks (`useState`, `useEffect`, custom hooks)     |
| **ReactDOM 18** | Renders the app into the DOM                                         |
| **Babel Standalone** | Transpiles JSX directly in the browser (no build step required) |
| **Bootstrap 5.3** | Grid system and utility classes for responsive layout               |
| **Font Awesome 6** | Icon library for a professional touch                              |
| **Google Fonts**  | Inter typeface for modern, readable text                           |
| **Intersection Observer** | Drives scroll‑triggered entrance animations                |
| **CSS3 custom properties** | Theme colours and consistent styling                     |

> ⚡ No Node.js, no bundler – everything runs directly in the browser thanks to CDN links.

## 🚀 How to Use

### Local viewing
Simply open the `index.html` file (inside the `deliverables` folder) in any modern browser.  
All dependencies (React, Bootstrap, Font Awesome, Babel) are loaded from CDNs.

```bash
# Clone the repository
git clone https://github.com/marcio-marine-corps-soldier/technology/projects/Web-Sites/CryptoPro/

# Navigate to the project folder
cd CryptoPro/deliverables

# Open index.html in your browser
# (or use a local server for a more realistic environment)
python -m http.server 8000
```

### Project Structure
```
CryptoPro/
├── deliverables/
│   └── index.html          # Main file – contains React, JSX, and styles
├── README.md               # This file
└── assets/                 # (Optional) images and extra resources
```

> **Note:** Unlike the previous version, all logic and styles are now inside a single `index.html` file, organized as React components.

## 📱 Highlighted Sections

### 1. **Professional Header**
- Sticky navigation with smooth scrolling.
- “Login” and “Create Account” buttons with user feedback.

### 2. **Real‑time Market Data**
- 5 major cryptocurrencies (BTC, ETH, SOL, XRP, BNB).
- Live price updates, 24h change percentages, volume, and market cap.
- Embedded “Buy” action buttons.

### 3. **Multi‑platform App**
- QR code for mobile download.
- Links to App Store and Google Play.
- Badges for Windows, macOS, Linux availability.

### 4. **Complete Features**
- Institutional‑level security
- Ultra‑fast transactions
- Advanced trading tools
- 24/7 global support
- Competitive fees
- Premium mobile app

## 🎨 Design and UX

### Color Palette
- **Primary:** `#1e40af` (Professional Blue)
- **Secondary:** `#000000` (Elegant Black)
- **Highlights:** `#10b981` (Green/Success), `#ef4444` (Red/Loss)
- **Neutrals:** Gray tones for text and backgrounds

### Typography
- **Main Font:** Inter (Google Fonts)
- **Weights:** 300 to 800 for clear hierarchy
- **Optimised** for long‑form reading

### Responsiveness
- Mobile‑first design using Bootstrap’s responsive utilities and custom media queries.
- Tables and images adapt gracefully on small screens.

## 🔧 Customisation

### Modifying Colors
Edit the CSS custom properties inside the `<style>` tag of `index.html`:
```css
:root {
    --primary: #1e40af;
    --primary-dark: #1e3a8a;
    /* … */
}
```

### Adding Cryptocurrencies
Extend the `initialData` array inside the `useMarketData` hook (found in the `<script type="text/babel">` block):
```javascript
const initialData = [
    // … existing entries …
    { id: 6, name: 'Cardano', symbol: 'ADA', price: 0.45, change: 2.3, … },
];
```

### Updating FAQ
Modify the `faqData` array inside the `FAQ` component:
```javascript
const faqData = [
    { q: 'New question?', a: 'Answer text.' },
    // …
];
```

### Changing Support / Features
The data for support cards, community channels, and features are also defined as arrays inside their respective React components – edit them directly to reflect your own content.

## 📈 Future Optimizations

### Planned Improvements
- [ ] Integrate a real cryptocurrency API (e.g., CoinGecko)
- [ ] Functional login / authentication
- [ ] User dashboard and portfolio tracker
- [ ] Conversion calculator
- [ ] Dark / light mode toggle
- [ ] Internationalisation (i18n)

### For Production
1. **Separate React components** into a proper Node.js / create‑react‑app project.
2. **Optimise assets** (images, fonts).
3. **Add SEO meta tags** and structured data.
4. **Include analytics** (Google Analytics).
5. **Thorough cross‑browser testing**.

## 🤝 Contributing

Contributions are welcome!

1. Fork the project
2. Create a branch (`git checkout -b feature/NewFeature`)
3. Commit your changes (`git commit -m 'Add new feature'`)
4. Push to the branch (`git push origin feature/NewFeature`)
5. Open a Pull Request

## 📄 License

This project is under the MIT license. See the [LICENSE](LICENSE) file for details.

## 👤 Author

**Marcio F. Reis**

- LinkedIn: [Marcio Marine Corps Soldier](https://www.linkedin.com/in/marcio-marine-corps-soldier/)
- GitHub: [@marcio-marine-corps-soldier](https://github.com/marcio-marine-corps-soldier)

## 🙏 Acknowledgments

- Icons by [Font Awesome](https://fontawesome.com)
- Fonts by [Google Fonts](https://fonts.google.com)
- React & Bootstrap communities
- Inspiration from Binance and other exchanges

---

⭐ **If you liked this project, leave a star on the repository!** ⭐

---

## 📞 Contact

Márcio F. Reis – [LinkedIn](https://linkedin.com/marcio-marine-corps-soldier)

Project Link: [GitHub](https://github.com/marcio-marine-corps-soldier/technology/tree/main/projects/Web-Sites/CryptoPro/)

---

**CryptoPro React** – Professional cryptocurrency platform rebuilt with modern React.js and a component‑driven architecture.

---
*Last updated: June 2026*
```

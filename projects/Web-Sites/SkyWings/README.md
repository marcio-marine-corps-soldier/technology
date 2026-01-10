# SkyWings - Flight Ticket Sales Platform

![SkyWings Website Preview](https://images.unsplash.com/photo-1436491865332-7a61a109cc05?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80)

A modern and responsive web platform for searching and purchasing flight tickets, developed with pure HTML, CSS, and JavaScript.

## 🌟 Demo

[![View Demo](https://img.shields.io/badge/View-Live%20Demo-brightgreen)](https://github.com/marcio-marine-corps-soldier/technology/blob/main/projects/Web-Sites/SkyWings/assets/FireShot%20Capture%20004%20-%20SkyWings%20-%20Your%20Flight%20Booking%20Platform%20-%20%5B%5D.png)

## ✨ Features

- **🔍 Advanced Flight Search**
  - Origin and destination with suggestions
  - Flexible dates (round trip)
  - Passenger and class selection
  - Filters by price and airlines

- **📱 Fully Responsive Design**
  - Adapted for desktop, tablet, and mobile
  - Hamburger menu for mobile devices
  - Flexible layout on all screen sizes

- **🎯 Specialized Services**
  - Real-time price comparison
  - 24/7 customer support
  - Secure purchase guarantee
  - Personalized travel itineraries

- **📲 Mobile App**
  - Available for iOS and Android
  - Online check-in
  - Price alerts
  - Offline ticket access

## 🛠️ Technologies Used

- **HTML5** - Semantic website structure
- **CSS3** - Modern styling with CSS variables, Flexbox, and Grid
- **JavaScript** - Interactivity and dynamic functionalities
- **Font Awesome** - Professional icons
- **Google Fonts** - Modern typography
- **Unsplash** - High-quality images

## 📁 Project Structure

```
SkyWings/
│
├── deliverables/
|   └──index.html              # Main page
├── README.md               # This file
│
└── (in development)        # Future pages
    ├── results.html        # Search results page
    ├── checkout.html       # Checkout page
    └── my-account.html     # Customer area
```

## 🎨 Design System

### Main Colors
```css
--primary: #1a73e8;    /* Primary blue */
--secondary: #0d47a1;  /* Dark blue */
--accent: #ff6d00;     /* Highlight orange */
--light: #f8f9fa;      /* Light background */
--dark: #202124;       /* Dark text */
```

### Typography
- **Headings:** Segoe UI, sans-serif
- **Body:** System font stack
- **Hierarchy:** Established with sizes from 1rem to 3rem

## 🚀 How to Use

### 1. Clone the repository
```bash
git clone https://github.com/marcio-marine-corps-soldier/technology/projects/Web-Sites/SkyWings/.git
```

### 2. Open in browser
Simply open the `index.html` file from the `deliverables` folder in any modern browser.

### 3. Development
For development, you can use any local server. Python suggestion:

```bash
# Python 3
python -m http.server 8000

# Or with npx
npx serve .
```

Access: `http://localhost:8000`

## 📱 Responsiveness

The website was developed with a **mobile-first** approach and adapts to:

| Device | Breakpoint | Characteristics |
|--------|------------|-----------------|
| Mobile | < 576px | Hamburger menu, single column |
| Tablet | 576px - 992px | Adaptive layout, 2 columns |
| Desktop | > 992px | Full layout, 4 columns |

## 🔧 JavaScript Functionalities

### 1. Mobile Navigation
```javascript
// Toggle hamburger menu
mobileMenuBtn.addEventListener('click', () => {
    navLinks.classList.toggle('active');
});
```

### 2. Form Validation
```javascript
// Basic validation of required fields
if (!origin || !destination) {
    alert('Please fill in origin and destination');
    return;
}
```

### 3. Date Configuration
```javascript
// Automatically configures minimum dates
document.getElementById('departure').min = today;
document.getElementById('return').min = tomorrowStr;
```

## 🎯 Upcoming Implementations

### Phase 2 (In development)
- [ ] Search results page
- [ ] Advanced filtering system
- [ ] Flight details page
- [ ] Checkout process

### Phase 3 (Planned)
- [ ] Flight API integration
- [ ] Login/registration system
- [ ] Search history
- [ ] Favorites and price alerts

### Phase 4 (Future)
- [ ] Node.js/Express backend
- [ ] PostgreSQL database
- [ ] Integrated payment system
- [ ] React Native app

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

Contributions are welcome! Follow these steps:

1. Fork the project
2. Create a Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 👥 Authors

- **Márcio F. Reis** - *Initial Development* - [YourGitHub](https://github.com/your-username)

## 🙏 Acknowledgments

- [Unsplash](https://unsplash.com) for amazing images
- [Font Awesome](https://fontawesome.com) for icons
- [Google Fonts](https://fonts.google.com) for typography

## 📞 Contact

Márcio F. Reis - [LinkedIn](https://www.linkedin.com/in/marcio-marine-corps-soldier/)

Project Link: [GitHub](https://github.com/marcio-marine-corps-soldier/technology/new/main/projects/Web-Sites/SkyWings/)

---

⭐️ If this project was useful to you, give it a star on the repository!

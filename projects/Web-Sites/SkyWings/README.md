# SkyWings - Flight Ticket Sales Platform

![SkyWings Website Preview](https://images.unsplash.com/photo-1436491865332-7a61a109cc05?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80)

A modern, responsive single‑page application for searching and booking flights, built with **React**, **Bootstrap 5**, and plain HTML/CSS/JavaScript – all in a single `index.html` file.

## 🌟 Demo

[![View Demo](https://img.shields.io/badge/View-Live%20Demo-brightgreen)](https://github.com/marcio-marine-corps-soldier/technology/blob/main/projects/Web-Sites/SkyWings/assets/FireShot%20Capture%20068%20-%20SkyWings%20-%20Your%20Flight%20Booking%20Platform%20-%20%5B%5D.png)

## ✨ Features

- **🔍 Advanced Flight Search**
  - Origin and destination fields
  - Date pickers for departure and return
  - Passenger count and class selection (Economy, Premium, Business, First)
  - Submission simulation with validation alerts

- **📱 Fully Responsive Design**
  - Mobile‑first layout with Bootstrap grid
  - Collapsible navbar with hamburger menu on small screens
  - Adapts seamlessly from phones to large desktops

- **🎯 Service Showcase**
  - Best Prices (real‑time comparison)
  - 24/7 Customer Support
  - Secure Purchase Guarantee
  - Custom Itineraries
  - Flexible Bookings
  - Loyalty Program

- **🌍 Popular Destinations**
  - Paris, New York, Tokyo, Rio de Janeiro cards with hover effects and price tags

- **📲 App Promotion Section**
  - Download badges for App Store and Google Play
  - Highlights of mobile features (offline tickets, price alerts, check‑in)

- **⚛️ Built with Modern Frontend Tools**
  - Component‑based architecture using React (via CDN)
  - Bootstrap 5 for styling and grid system
  - State management for form inputs and mobile menu toggle

## 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| **React 18** | UI components and interactivity |
| **ReactDOM** | Rendering the application |
| **Babel Standalone** | On‑the‑fly JSX transformation |
| **Bootstrap 5** | Responsive grid, navbar, forms, utilities |
| **Font Awesome 6** | Icons throughout the interface |
| **Unsplash** | High‑quality destination and app images |
| **Google Fonts** | System font stack (Segoe UI) |

## 📁 Project Structure
```
SkyWings/  
├── assets/FireShot...png (screenshot for README)  
├── deliverables/index.html # The entire application (React + Bootstrap + CSS)   
└── README.md # This file text
```

The application is delivered as a **single HTML file** – no build step, no local server required. Just open `index.html` in a modern browser.

## 🎨 Design System

### Main Colors
```css
--primary: #1a73e8;    /* Primary blue */
--secondary: #0d47a1;  /* Dark blue */
--accent: #ff6d00;     /* Highlight orange */
--light: #f8f9fa;      /* Light background */
--dark: #202124;       /* Dark footer/text */
```

### Typography   
 - Headings: Segoe UI, Tahoma, Geneva, Verdana, sans-serif  
 - Body: System font stack  
 - Hierarchy: From 1rem to 3rem, clear visual headings  

## 🚀 How to Run

### Option 1 – Directly in Browser  
1. Clone or download the repository.  
2. Open the index.html file in Chrome, Edge, Firefox, or Safari.  
3. That's it – the app loads instantly.  

### Option 2 – Local Server (for development)  
If you want to simulate a real server environment:  

```
# Python 3  
python -m http.server 8000  

# Or with npx
npx serve .
```
  
Then visit http://localhost:8000.  

## 📱 Responsiveness  
The layout adapts using Bootstrap breakpoints:  

| Device | Breakpoint | Behaviour |  
|--------|------------|-----------|
| Mobile | < 576px | Single column, hamburger menu |  
| Tablet | 576px – 992px | 2‑column grids, navbar adapts |  
| Desktop | > 992px | Full multi‑column layout | 

All interactive elements (search form, cards, images) remain fully usable on every screen size.  

## ⚛️ React Implementation Details
The entire page is built as a tree of React functional components:  
  - App – Root component that composes all sections  
  - Header – Fixed navbar with collapsible menu (state: isOpen)  
  - Hero – Call‑to‑action banner  
  - SearchForm – Controlled form with 6 state variables, validation, and submission handler  
  - Services – Loop rendering of service cards from an array  
  - Destinations – Dynamic image cards with overlay  
  - AppSection – Promotional block with app badges  
  - Footer – Multi‑column footer with social icons and copyright (visible with color: #b0b0b0)  
  - All components are defined in a single <script type="text/babel"> tag, and the app is rendered into <div id="root"> via ReactDOM.createRoot.  

## 🎯 Upcoming Features
Planned enhancements to extend the single‑file prototype:  
  - Search results page (dynamic filtering)  
  - Flight API integration (real data)  
  - User authentication (login / registration)  
  - Checkout flow and payment simulation  
  - Backend with Node.js/Express and database  
  - Progressive Web App (PWA) capabilities  

## 📄 License
This project is licensed under the MIT License – see the LICENSE file for details.  

## 🤝 Contributing
Contributions are welcome! Follow these steps:  

1. Fork the project  
2. Create a Feature Branch (git checkout -b feature/AmazingFeature)  
3. Commit your changes (git commit -m 'Add some AmazingFeature')  
4. Push to the Branch (git push origin feature/AmazingFeature)  
5. Open a Pull Request  

## 👥 Authors
**Márcio F. Reis** - [GitHub](https://github.com/marcio-marine-corps-soldier/)

## 🙏 Acknowledgments
  - Unsplash for beautiful images  
  - Font Awesome for iconography  
  - Bootstrap for the responsive framework  
  - React and Babel for making SPA development fast and accessible  

## 📞 Contact
**Márcio F. Reis** - [LinkedIn](https://www.linkedin.com/in/marcio-marine-corps-soldier/)  
**Project Link:** [GitHub](https://github.com/marcio-marine-corps-soldier/technology/new/main/projects/Web-Sites/SkyWings/)  

## ⭐️ If this project was useful, consider giving it a star!

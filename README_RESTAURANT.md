# EUT Restaurant Website

## Overview
A modern, responsive restaurant website for EUT Restaurant featuring "Eat • Unwind • Tea" concept. Built with Laravel and Tailwind CSS, showcasing delicious hamburgers, french fries, and comprehensive menu offerings.

## Features Implemented

### 🍔 Food Photography
- **High-quality images downloaded and integrated:**
  - Hero burger and fries combination image
  - Individual burger photography
  - French fries glamour shots
  - Gourmet burger presentations
  - Restaurant interior ambiance
  - Combo meal displays

### 📋 Complete Menu System
- **Comprehensive menu with real data:**
  - 6 Premium Burger varieties (₱320-₱420)
  - 5 Delicious Sides (₱120-₱180)
  - 4 Beverage options (₱100-₱200)
  - 3 Value Combo Meals (₱550-₱650)

### 🔄 Interactive Menu Filtering
- **Category-based filtering system:**
  - All Items view
  - Burgers only
  - Sides only
  - Beverages only
  - Combo meals only
- **Smooth animations and transitions**
- **Add to Cart functionality with visual feedback**

### 📄 Downloadable Menu PDF
- **Professional menu document:**
  - Print-friendly layout
  - Complete pricing information
  - Ingredient listings
  - Contact information
  - Accessible via `/menu-pdf` route

### 🎨 Modern Design Features
- **Dark theme with amber accents**
- **Responsive design (mobile-first)**
- **Smooth scrolling navigation**
- **Hover effects and animations**
- **Professional typography with Playfair Display**

## Menu Categories

### Premium Burgers
1. **EUT Classic Burger** - ₱350
   - Juicy beef patty, lettuce, tomato, pickles, special sauce on brioche bun

2. **Gourmet Cheeseburger** - ₱420
   - Premium beef with aged cheddar, caramelized onions, bacon

3. **Spicy Jalapeño Burger** - ₱380
   - Flame-grilled patty with jalapeños, pepper jack cheese, chipotle mayo

4. **Mushroom Swiss Burger** - ₱395
   - Sautéed mushrooms, Swiss cheese, garlic aioli on artisan bread

5. **BBQ Bacon Burger** - ₱410
   - Smoky BBQ sauce, crispy bacon, onion rings, cheddar cheese

6. **Veggie Delight Burger** - ₱320
   - House-made veggie patty with avocado, sprouts, herbed mayo

### Delicious Sides
1. **Classic French Fries** - ₱120
2. **Sweet Potato Fries** - ₱150
3. **Loaded Cheese Fries** - ₱180
4. **Onion Rings** - ₱140
5. **Mozzarella Sticks** - ₱160

### Beverages
1. **Premium Tea Collection** - ₱180
2. **Freshly Brewed Coffee** - ₱120
3. **Fresh Fruit Smoothies** - ₱200
4. **Craft Sodas** - ₱100

### Value Combo Meals
1. **EUT Classic Combo** - ₱550
2. **Gourmet Combo** - ₱650
3. **Spicy Combo** - ₱620

## File Structure

### Views
- `resources/views/restaurant.blade.php` - Main restaurant landing page
- `resources/views/menu-pdf.blade.php` - Downloadable menu PDF format

### Models
- `app/Models/MenuItem.php` - Menu data structure and helper methods

### Assets
- `public/images/` - High-quality food photography
  - `hero-burger.jpg` - Main hero image
  - `delicious-burger-fries.jpg` - Featured combo image
  - `gourmet-burger.jpg` - Premium burger shots
  - `french-fries.jpg` - Crispy fries photography
  - `combo-meal.jpg` - Complete meal presentations
  - `restaurant-interior.jpg` - Dining atmosphere

### Routes
- `/` - Main restaurant homepage
- `/menu-pdf` - Downloadable menu document

## Technical Implementation

### Frontend Technologies
- **Tailwind CSS** - Utility-first CSS framework
- **Vanilla JavaScript** - Menu filtering and interactions
- **Google Fonts** - Playfair Display & Inter typography
- **Responsive Images** - Optimized food photography

### Backend Structure
- **Laravel 11** - PHP framework
- **Blade Templates** - Server-side rendering
- **Static Menu Data** - Structured PHP arrays
- **Route-based PDF** - HTML-to-PDF menu generation

## Key Features in Detail

### Interactive Menu System
```javascript
// Dynamic category filtering
// Add to cart animations
// Smooth section transitions
// Mobile-responsive design
```

### Professional Food Photography
- All images sourced from high-quality stock photography
- Optimized for web performance
- Consistent styling and presentation
- Mobile-responsive image handling

### Complete Pricing Structure
- Competitive pricing in Philippine Peso (₱)
- Value combo deals for cost-conscious customers
- Premium options for gourmet experiences
- Transparent pricing with no hidden fees

## Contact Information
- **Location:** 123 Food Street, Culinary District, City
- **Phone:** +63 912 345 6789
- **Email:** info@eutrestaurant.com
- **Hours:** Mon-Sun: 10:00 AM - 10:00 PM

## Usage Instructions

1. **Navigate the website:**
   - Scroll through sections or use navigation menu
   - View featured menu items in hero section

2. **Browse complete menu:**
   - Use category filters to find specific items
   - Click "Add to Cart" for visual feedback
   - View detailed descriptions and pricing

3. **Download menu:**
   - Click "Download Menu PDF" for printable version
   - Perfect for offline viewing or sharing

4. **Make reservations:**
   - Use contact form in footer
   - Call directly for immediate booking

## Development Notes

### Menu Data Structure
The menu items are organized in the `MenuItem` model with methods for:
- `getBurgers()` - Burger category items
- `getSides()` - Side dish options
- `getBeverages()` - Drink selections
- `getComboMeals()` - Value meal combinations
- `getFeaturedItems()` - Homepage highlights

### Image Optimization
All food images are:
- Web-optimized JPEG format
- Consistent aspect ratios
- High resolution for quality display
- Properly named and organized

### Future Enhancements
- Online ordering system integration
- Real-time inventory management
- Customer review system
- Social media integration
- Loyalty program features

---

**Built with ❤️ for EUT Restaurant - Where you Eat, Unwind, and enjoy Tea!**
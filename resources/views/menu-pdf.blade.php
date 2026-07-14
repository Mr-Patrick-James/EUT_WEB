<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EUT Restaurant - Complete Menu</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f8f9fa;
            color: #333;
        }
        
        .menu-header {
            text-align: center;
            margin-bottom: 40px;
            background: linear-gradient(135deg, #f59e0b, #d97706);
            color: white;
            padding: 30px;
            border-radius: 10px;
        }
        
        .menu-header h1 {
            font-size: 2.5rem;
            margin: 0;
            font-weight: bold;
        }
        
        .menu-header p {
            font-size: 1.2rem;
            margin: 10px 0 0 0;
            opacity: 0.9;
        }
        
        .menu-section {
            margin-bottom: 40px;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .section-title {
            font-size: 2rem;
            color: #f59e0b;
            border-bottom: 3px solid #f59e0b;
            padding-bottom: 10px;
            margin-bottom: 25px;
            font-weight: bold;
        }
        
        .menu-item {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            padding: 15px 0;
            border-bottom: 1px solid #e5e7eb;
        }
        
        .menu-item:last-child {
            border-bottom: none;
        }
        
        .item-details {
            flex: 1;
        }
        
        .item-name {
            font-size: 1.3rem;
            font-weight: bold;
            color: #1f2937;
            margin-bottom: 5px;
        }
        
        .item-description {
            color: #6b7280;
            font-size: 1rem;
            line-height: 1.4;
            margin-bottom: 8px;
        }
        
        .item-ingredients {
            color: #9ca3af;
            font-size: 0.9rem;
            font-style: italic;
        }
        
        .item-price {
            font-size: 1.4rem;
            font-weight: bold;
            color: #f59e0b;
            margin-left: 20px;
        }
        
        .combo-section .menu-item {
            background: #fef3c7;
            padding: 20px;
            border-radius: 8px;
            border: none;
            margin-bottom: 15px;
        }
        
        .includes {
            color: #92400e;
            font-size: 0.95rem;
            margin-top: 8px;
        }
        
        .footer {
            text-align: center;
            margin-top: 40px;
            padding: 20px;
            background: #374151;
            color: white;
            border-radius: 10px;
        }
        
        .contact-info {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
            flex-wrap: wrap;
        }
        
        .contact-item {
            margin: 10px;
        }
        
        @media print {
            body {
                background-color: white;
            }
            .menu-section {
                box-shadow: none;
                border: 1px solid #e5e7eb;
            }
        }
    </style>
</head>
<body>
    <div class="menu-header">
        <h1>EUT Restaurant</h1>
        <p>Eat • Unwind • Tea</p>
        <p>Complete Menu & Price List</p>
    </div>

    <!-- Burgers Section -->
    <div class="menu-section">
        <h2 class="section-title">Premium Burgers</h2>
        
        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">EUT Classic Burger</div>
                <div class="item-description">Juicy beef patty, lettuce, tomato, pickles, special sauce on brioche bun</div>
                <div class="item-ingredients">Beef patty • Lettuce • Tomato • Pickles • Special sauce • Brioche bun</div>
            </div>
            <div class="item-price">₱350</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Gourmet Cheeseburger</div>
                <div class="item-description">Premium beef with aged cheddar, caramelized onions, bacon</div>
                <div class="item-ingredients">Premium beef • Aged cheddar • Caramelized onions • Bacon • Arugula</div>
            </div>
            <div class="item-price">₱420</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Spicy Jalapeño Burger</div>
                <div class="item-description">Flame-grilled patty with jalapeños, pepper jack cheese, chipotle mayo</div>
                <div class="item-ingredients">Beef patty • Jalapeños • Pepper jack cheese • Chipotle mayo • Lettuce</div>
            </div>
            <div class="item-price">₱380</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Mushroom Swiss Burger</div>
                <div class="item-description">Sautéed mushrooms, Swiss cheese, garlic aioli on artisan bread</div>
                <div class="item-ingredients">Beef patty • Sautéed mushrooms • Swiss cheese • Garlic aioli • Arugula</div>
            </div>
            <div class="item-price">₱395</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">BBQ Bacon Burger</div>
                <div class="item-description">Smoky BBQ sauce, crispy bacon, onion rings, cheddar cheese</div>
                <div class="item-ingredients">Beef patty • BBQ sauce • Crispy bacon • Onion rings • Cheddar cheese</div>
            </div>
            <div class="item-price">₱410</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Veggie Delight Burger</div>
                <div class="item-description">House-made veggie patty with avocado, sprouts, herbed mayo</div>
                <div class="item-ingredients">Veggie patty • Avocado • Sprouts • Herbed mayo • Whole grain bun</div>
            </div>
            <div class="item-price">₱320</div>
        </div>
    </div>

    <!-- Sides Section -->
    <div class="menu-section">
        <h2 class="section-title">Delicious Sides</h2>
        
        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Classic French Fries</div>
                <div class="item-description">Golden crispy fries with sea salt</div>
                <div class="item-ingredients">Available in Regular & Large sizes</div>
            </div>
            <div class="item-price">₱120</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Sweet Potato Fries</div>
                <div class="item-description">Crispy sweet potato fries with honey mustard dip</div>
                <div class="item-ingredients">Available in Regular & Large sizes</div>
            </div>
            <div class="item-price">₱150</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Loaded Cheese Fries</div>
                <div class="item-description">Fries topped with melted cheese, bacon bits, green onions</div>
                <div class="item-ingredients">Available in Regular & Large sizes</div>
            </div>
            <div class="item-price">₱180</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Onion Rings</div>
                <div class="item-description">Beer-battered onion rings with ranch dipping sauce</div>
                <div class="item-ingredients">Available in Regular & Large sizes</div>
            </div>
            <div class="item-price">₱140</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Mozzarella Sticks</div>
                <div class="item-description">Golden fried mozzarella with marinara sauce</div>
                <div class="item-ingredients">Available in 6 pieces & 12 pieces</div>
            </div>
            <div class="item-price">₱160</div>
        </div>
    </div>

    <!-- Beverages Section -->
    <div class="menu-section">
        <h2 class="section-title">Beverages</h2>
        
        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Premium Tea Collection</div>
                <div class="item-description">Earl Grey, Jasmine, Oolong, or Chamomile</div>
                <div class="item-ingredients">Available Hot or Iced</div>
            </div>
            <div class="item-price">₱180</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Freshly Brewed Coffee</div>
                <div class="item-description">Single origin coffee, expertly brewed</div>
                <div class="item-ingredients">Black • Latte • Cappuccino</div>
            </div>
            <div class="item-price">₱120</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Fresh Fruit Smoothies</div>
                <div class="item-description">Made with fresh fruits and natural ingredients</div>
                <div class="item-ingredients">Mango • Strawberry • Mixed Berry</div>
            </div>
            <div class="item-price">₱200</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Craft Sodas</div>
                <div class="item-description">House-made sodas in various flavors</div>
                <div class="item-ingredients">Cola • Lemon-Lime • Orange • Root Beer</div>
            </div>
            <div class="item-price">₱100</div>
        </div>
    </div>

    <!-- Combo Meals Section -->
    <div class="menu-section combo-section">
        <h2 class="section-title">Value Combo Meals</h2>
        
        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">EUT Classic Combo</div>
                <div class="item-description">Perfect combination for a satisfying meal</div>
                <div class="includes">Includes: EUT Classic Burger + Regular Fries + Soft Drink</div>
            </div>
            <div class="item-price">₱550</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Gourmet Combo</div>
                <div class="item-description">Premium dining experience with our finest selections</div>
                <div class="includes">Includes: Gourmet Cheeseburger + Sweet Potato Fries + Premium Tea</div>
            </div>
            <div class="item-price">₱650</div>
        </div>

        <div class="menu-item">
            <div class="item-details">
                <div class="item-name">Spicy Combo</div>
                <div class="item-description">For those who love a kick of flavor</div>
                <div class="includes">Includes: Spicy Jalapeño Burger + Loaded Cheese Fries + Fresh Smoothie</div>
            </div>
            <div class="item-price">₱620</div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <h3>Visit EUT Restaurant Today!</h3>
        <p>Experience the perfect blend of taste, ambiance, and service</p>
        
        <div class="contact-info">
            <div class="contact-item">
                <strong>📍 Location</strong><br>
                123 Food Street, Culinary District, City
            </div>
            <div class="contact-item">
                <strong>📞 Phone</strong><br>
                +63 912 345 6789
            </div>
            <div class="contact-item">
                <strong>🕒 Hours</strong><br>
                Mon-Sun: 10:00 AM - 10:00 PM
            </div>
            <div class="contact-item">
                <strong>📧 Email</strong><br>
                info@eutrestaurant.com
            </div>
        </div>
        
        <p style="margin-top: 30px; font-size: 0.9rem; opacity: 0.8;">
            © 2026 EUT Restaurant. All rights reserved. | Eat • Unwind • Tea
        </p>
    </div>
</body>
</html>
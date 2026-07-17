<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\MenuItem;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class MenuSeeder extends Seeder
{
    public function run(): void
    {
        // ── Categories ───────────────────────────────────────
        $cats = [
            ['name'=>'Burgers',     'slug'=>'burgers',   'icon'=>'beef',    'color'=>'#dc2626','description'=>'Juicy handcrafted beef & veggie burgers'],
            ['name'=>'Sides',       'slug'=>'sides',     'icon'=>'flame',   'color'=>'#f59e0b','description'=>'Crispy fries, rings & snack bites'],
            ['name'=>'Beverages',   'slug'=>'beverages', 'icon'=>'coffee',  'color'=>'#6b7280','description'=>'Premium teas, coffees & smoothies'],
            ['name'=>'Combo Meals', 'slug'=>'combos',    'icon'=>'package', 'color'=>'#7c3aed','description'=>'Full meal deals at great value'],
        ];

        foreach ($cats as $i => $c) {
            Category::updateOrCreate(['slug' => $c['slug']], array_merge($c, ['sort_order' => $i + 1]));
        }

        $burgers   = Category::where('slug','burgers')->first();
        $sides     = Category::where('slug','sides')->first();
        $beverages = Category::where('slug','beverages')->first();
        $combos    = Category::where('slug','combos')->first();

        // ── Burgers ──────────────────────────────────────────
        $burgerItems = [
            ['name'=>'EUT Classic Burger',    'description'=>'Juicy beef patty, lettuce, tomato, pickles, special sauce on brioche bun','price'=>350,'image'=>'/images/hero-burger.jpg',              'featured'=>true,  'sort_order'=>1],
            ['name'=>'Gourmet Cheeseburger',  'description'=>'Premium beef with aged cheddar, caramelized onions, bacon',               'price'=>420,'image'=>'/images/gourmet-burger.jpg',          'featured'=>true,  'sort_order'=>2],
            ['name'=>'Spicy Jalapeño Burger', 'description'=>'Flame-grilled patty with jalapeños, pepper jack cheese, chipotle mayo',   'price'=>380,'image'=>'/images/delicious-burger-fries.jpg',  'featured'=>false, 'sort_order'=>3],
            ['name'=>'Mushroom Swiss Burger', 'description'=>'Sautéed mushrooms, Swiss cheese, garlic aioli on artisan bread',          'price'=>395,'image'=>'/images/combo-meal.jpg',              'featured'=>false, 'sort_order'=>4],
            ['name'=>'BBQ Bacon Burger',      'description'=>'Smoky BBQ sauce, crispy bacon, onion rings, cheddar cheese',              'price'=>410,'image'=>'/images/hero-burger.jpg',              'featured'=>false, 'sort_order'=>5],
            ['name'=>'Veggie Delight Burger', 'description'=>'House-made veggie patty with avocado, sprouts, herbed mayo',              'price'=>320,'image'=>'/images/gourmet-burger.jpg',          'featured'=>false, 'sort_order'=>6],
        ];

        foreach ($burgerItems as $item) {
            MenuItem::updateOrCreate(
                ['category_id' => $burgers->id, 'name' => $item['name']],
                array_merge($item, ['category_id' => $burgers->id, 'is_archived' => false])
            );
        }

        // ── Sides ────────────────────────────────────────────
        $sideItems = [
            ['name'=>'Classic French Fries',  'description'=>'Golden crispy fries with sea salt',                           'price'=>120,'image'=>'/images/french-fries.jpg',   'featured'=>true,  'sort_order'=>1],
            ['name'=>'Sweet Potato Fries',    'description'=>'Crispy sweet potato fries with honey mustard dip',             'price'=>150,'image'=>'/images/fries-cutout.png',   'featured'=>false, 'sort_order'=>2],
            ['name'=>'Onion Rings',           'description'=>'Beer-battered onion rings with ranch dip',                     'price'=>135,'image'=>'/images/french-fries.jpg',   'featured'=>false, 'sort_order'=>3],
            ['name'=>'Loaded Nachos',         'description'=>'Tortilla chips with cheese sauce, jalapeños, sour cream',      'price'=>195,'image'=>'/images/single-fries.png',   'featured'=>true,  'sort_order'=>4],
            ['name'=>'Coleslaw',              'description'=>'Creamy house coleslaw with a tangy finish',                    'price'=>80, 'image'=>'/images/fries-cutout.png',   'featured'=>false, 'sort_order'=>5],
        ];

        foreach ($sideItems as $item) {
            MenuItem::updateOrCreate(
                ['category_id' => $sides->id, 'name' => $item['name']],
                array_merge($item, ['category_id' => $sides->id, 'is_archived' => false])
            );
        }

        // ── Beverages ─────────────────────────────────────────
        $bevItems = [
            ['name'=>'Classic Iced Tea',      'description'=>'Freshly brewed iced tea with lemon',                           'price'=>80, 'image'=>'/images/restaurant-interior.jpg','featured'=>true,  'sort_order'=>1],
            ['name'=>'Mango Smoothie',        'description'=>'Fresh mango blended with yogurt and honey',                    'price'=>150,'image'=>'/images/restaurant-interior.jpg','featured'=>true,  'sort_order'=>2],
            ['name'=>'Americano',             'description'=>'Double espresso with hot water, rich and bold',                'price'=>120,'image'=>'/images/restaurant-interior.jpg','featured'=>false, 'sort_order'=>3],
            ['name'=>'Strawberry Lemonade',   'description'=>'Fresh strawberries blended with tangy lemonade',               'price'=>130,'image'=>'/images/restaurant-interior.jpg','featured'=>false, 'sort_order'=>4],
        ];

        foreach ($bevItems as $item) {
            MenuItem::updateOrCreate(
                ['category_id' => $beverages->id, 'name' => $item['name']],
                array_merge($item, ['category_id' => $beverages->id, 'is_archived' => false])
            );
        }

        // ── Combo Meals ───────────────────────────────────────
        $comboItems = [
            ['name'=>'EUT Classic Combo',     'description'=>'Classic Burger + Classic Fries + Iced Tea',                    'price'=>550,'image'=>'/images/combo-meal.jpg',       'featured'=>true,  'sort_order'=>1],
            ['name'=>'Gourmet Combo',         'description'=>'Gourmet Cheeseburger + Sweet Potato Fries + Americano',        'price'=>650,'image'=>'/images/combo-meal.jpg',       'featured'=>true,  'sort_order'=>2],
            ['name'=>'Spicy Combo',           'description'=>'Spicy Jalapeño Burger + Onion Rings + Lemonade',               'price'=>740,'image'=>'/images/combo-meal.jpg',       'featured'=>false, 'sort_order'=>3],
        ];

        foreach ($comboItems as $item) {
            MenuItem::updateOrCreate(
                ['category_id' => $combos->id, 'name' => $item['name']],
                array_merge($item, ['category_id' => $combos->id, 'is_archived' => false])
            );
        }

        $this->command->info('Menu seeded: ' . Category::count() . ' categories, ' . MenuItem::count() . ' items.');
    }
}

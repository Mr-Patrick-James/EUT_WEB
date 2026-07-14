<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tailwind CSS Example</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="bg-gray-50 min-h-screen">
    <!-- Navigation -->
    <nav class="bg-white shadow-lg">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex justify-between items-center py-4">
                <h1 class="text-2xl font-bold text-gray-800">My App</h1>
                <div class="space-x-4">
                    <a href="#" class="text-gray-600 hover:text-gray-800 px-3 py-2 rounded-md">Home</a>
                    <a href="#" class="text-gray-600 hover:text-gray-800 px-3 py-2 rounded-md">About</a>
                    <a href="#" class="bg-blue-500 hover:bg-blue-700 text-white px-4 py-2 rounded-md">Contact</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mx-auto px-4 py-8">
        <!-- Hero Section -->
        <div class="bg-gradient-to-r from-blue-500 to-purple-600 text-white rounded-lg p-8 mb-8">
            <h2 class="text-4xl font-bold mb-4">Welcome to Tailwind CSS!</h2>
            <p class="text-xl mb-6">No more hardcoded CSS - use utility classes instead!</p>
            <button class="bg-white text-blue-500 hover:bg-gray-100 px-6 py-3 rounded-lg font-semibold transition duration-300">
                Get Started
            </button>
        </div>

        <!-- Cards Grid -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
            <!-- Card 1 -->
            <div class="bg-white rounded-lg shadow-md hover:shadow-lg transition duration-300">
                <div class="p-6">
                    <div class="w-12 h-12 bg-red-500 rounded-full mb-4 flex items-center justify-center">
                        <span class="text-white text-xl font-bold">1</span>
                    </div>
                    <h3 class="text-xl font-semibold mb-2 text-gray-800">Utility Classes</h3>
                    <p class="text-gray-600">Use pre-built classes like 'bg-red-500', 'p-6', 'rounded-lg' instead of writing custom CSS.</p>
                </div>
            </div>

            <!-- Card 2 -->
            <div class="bg-white rounded-lg shadow-md hover:shadow-lg transition duration-300">
                <div class="p-6">
                    <div class="w-12 h-12 bg-green-500 rounded-full mb-4 flex items-center justify-center">
                        <span class="text-white text-xl font-bold">2</span>
                    </div>
                    <h3 class="text-xl font-semibold mb-2 text-gray-800">Responsive Design</h3>
                    <p class="text-gray-600">Use prefixes like 'md:' and 'lg:' to create responsive layouts easily.</p>
                </div>
            </div>

            <!-- Card 3 -->
            <div class="bg-white rounded-lg shadow-md hover:shadow-lg transition duration-300">
                <div class="p-6">
                    <div class="w-12 h-12 bg-blue-500 rounded-full mb-4 flex items-center justify-center">
                        <span class="text-white text-xl font-bold">3</span>
                    </div>
                    <h3 class="text-xl font-semibold mb-2 text-gray-800">No Custom CSS</h3>
                    <p class="text-gray-600">Build entire interfaces without writing a single line of custom CSS!</p>
                </div>
            </div>
        </div>

        <!-- Form Example -->
        <div class="bg-white rounded-lg shadow-md p-6">
            <h3 class="text-2xl font-bold mb-4 text-gray-800">Contact Form</h3>
            <form class="space-y-4">
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">Name</label>
                    <input type="text" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">Email</label>
                    <input type="email" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2">Message</label>
                    <textarea rows="4" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-500 focus:border-blue-500"></textarea>
                </div>
                <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white px-6 py-2 rounded-md font-semibold transition duration-300">
                    Send Message
                </button>
            </form>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-gray-800 text-white py-8 mt-12">
        <div class="container mx-auto px-4 text-center">
            <p>&copy; 2026 My Laravel App. Built with Tailwind CSS - No hardcoded styles!</p>
        </div>
    </footer>
</body>
</html>
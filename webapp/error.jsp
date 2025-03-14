<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error - BlockchainKYC</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body class="bg-gray-50 font-[Inter] min-h-screen flex flex-col">
    <nav class="bg-white shadow-lg">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-16">
                <div class="flex">
                    <div class="flex-shrink-0 flex items-center">
                        <a href="index.jsp" class="flex items-center">
                            <i class="fas fa-link text-blue-600 text-2xl mr-2"></i>
                            <span class="text-xl font-semibold">BlockchainKYC</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <main class="flex-grow flex items-center justify-center">
        <div class="max-w-xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <div class="mb-8">
                <i class="fas fa-exclamation-circle text-red-500 text-6xl"></i>
            </div>
            <h1 class="text-4xl font-bold text-gray-900 mb-4">Oops! Something went wrong</h1>
            <p class="text-xl text-gray-600 mb-8">
                We apologize for the inconvenience. Please try again later.
            </p>
            <div class="flex justify-center space-x-4">
                <a href="javascript:history.back()" 
                   class="inline-flex items-center px-4 py-2 border border-gray-300 shadow-sm text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50">
                    <i class="fas fa-arrow-left mr-2"></i>
                    Go Back
                </a>
                <a href="index.jsp" 
                   class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700">
                    <i class="fas fa-home mr-2"></i>
                    Return Home
                </a>
            </div>
        </div>
    </main>

    <footer class="bg-white mt-auto border-t border-gray-200">
        <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
            <p class="text-center text-gray-500 text-sm">
                © 2024 BlockchainKYC. All rights reserved.
            </p>
        </div>
    </footer>
</body>
</html>

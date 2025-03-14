<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blockchain KYC System</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body class="bg-gray-50 font-[Inter]">
    <nav class="bg-white shadow-lg">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-16">
                <div class="flex">
                    <div class="flex-shrink-0 flex items-center">
                        <i class="fas fa-link text-blue-600 text-2xl mr-2"></i>
                        <span class="text-xl font-semibold">BlockchainKYC</span>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <main class="max-w-7xl mx-auto py-12 px-4 sm:px-6 lg:px-8">
        <div class="text-center">
            <h1 class="text-4xl font-bold text-gray-900 mb-4">
                Blockchain-Based KYC System
            </h1>
            <p class="text-xl text-gray-600 mb-8">
                Secure, transparent, and efficient KYC verification for credit allocation
            </p>
        </div>

        <div class="mt-12 grid grid-cols-1 gap-8 sm:grid-cols-2 lg:grid-cols-3">
            <!-- Feature 1 -->
            <div class="bg-white overflow-hidden shadow rounded-lg">
                <div class="px-4 py-5 sm:p-6">
                    <div class="flex items-center">
                        <div class="flex-shrink-0">
                            <i class="fas fa-shield-alt text-blue-500 text-3xl"></i>
                        </div>
                        <div class="ml-5">
                            <h3 class="text-lg font-medium text-gray-900">Secure Verification</h3>
                            <p class="mt-2 text-sm text-gray-500">
                                Your data is secured using blockchain technology
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Feature 2 -->
            <div class="bg-white overflow-hidden shadow rounded-lg">
                <div class="px-4 py-5 sm:p-6">
                    <div class="flex items-center">
                        <div class="flex-shrink-0">
                            <i class="fas fa-clock text-blue-500 text-3xl"></i>
                        </div>
                        <div class="ml-5">
                            <h3 class="text-lg font-medium text-gray-900">Quick Process</h3>
                            <p class="mt-2 text-sm text-gray-500">
                                Fast and efficient credit allocation
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Feature 3 -->
            <div class="bg-white overflow-hidden shadow rounded-lg">
                <div class="px-4 py-5 sm:p-6">
                    <div class="flex items-center">
                        <div class="flex-shrink-0">
                            <i class="fas fa-chart-line text-blue-500 text-3xl"></i>
                        </div>
                        <div class="ml-5">
                            <h3 class="text-lg font-medium text-gray-900">Smart Analysis</h3>
                            <p class="mt-2 text-sm text-gray-500">
                                Intelligent credit limit calculation
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mt-12 text-center">
            <a href="kyc.jsp" class="inline-flex items-center px-6 py-3 border border-transparent text-base font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700">
                Start KYC Process
                <i class="fas fa-arrow-right ml-2"></i>
            </a>
        </div>
    </main>

    <footer class="bg-white mt-12 border-t border-gray-200">
        <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
            <p class="text-center text-gray-500 text-sm">
                © 2024 BlockchainKYC. All rights reserved.
            </p>
        </div>
    </footer>
</body>
</html>

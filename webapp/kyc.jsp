<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KYC Form - BlockchainKYC</title>
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
                        <a href="index.jsp" class="flex items-center">
                            <i class="fas fa-link text-blue-600 text-2xl mr-2"></i>
                            <span class="text-xl font-semibold">BlockchainKYC</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <main class="max-w-3xl mx-auto py-12 px-4 sm:px-6 lg:px-8">
        <div class="bg-white shadow rounded-lg">
            <div class="px-4 py-5 sm:p-6">
                <h2 class="text-2xl font-bold text-gray-900 mb-6">KYC Information Form</h2>
                
                <form action="result.jsp" method="POST" class="space-y-6" onsubmit="return validateForm()">
                    <!-- Full Name -->
                    <div>
                        <label for="fullName" class="block text-sm font-medium text-gray-700">Full Name</label>
                        <input type="text" name="fullName" id="fullName" required
                            class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm py-2 px-3 focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                    </div>

                    <!-- Date of Birth -->
                    <div>
                        <label for="dateOfBirth" class="block text-sm font-medium text-gray-700">Date of Birth</label>
                        <input type="date" name="dateOfBirth" id="dateOfBirth" required
                            class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm py-2 px-3 focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                    </div>

                    <!-- Address -->
                    <div>
                        <label for="address" class="block text-sm font-medium text-gray-700">Address</label>
                        <textarea name="address" id="address" rows="3" required
                            class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm py-2 px-3 focus:outline-none focus:ring-blue-500 focus:border-blue-500"></textarea>
                    </div>

                    <!-- SSN -->
                    <div>
                        <label for="ssn" class="block text-sm font-medium text-gray-700">Social Security Number</label>
                        <input type="text" name="ssn" id="ssn" required pattern="[0-9]{3}-[0-9]{2}-[0-9]{4}"
                            placeholder="123-45-6789"
                            class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm py-2 px-3 focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                        <p class="mt-1 text-sm text-gray-500">Format: XXX-XX-XXXX</p>
                    </div>

                    <!-- Income -->
                    <div>
                        <label for="income" class="block text-sm font-medium text-gray-700">Annual Income</label>
                        <div class="mt-1 relative rounded-md shadow-sm">
                            <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                <span class="text-gray-500 sm:text-sm">$</span>
                            </div>
                            <input type="number" name="income" id="income" required min="0" step="1000"
                                class="block w-full pl-7 pr-12 border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <div class="pt-4">
                        <button type="submit"
                            class="w-full flex justify-center py-3 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                            Submit KYC Information
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </main>

    <script>
        function validateForm() {
            const ssn = document.getElementById('ssn').value;
            const ssnPattern = /^\d{3}-\d{2}-\d{4}$/;
            
            if (!ssnPattern.test(ssn)) {
                alert('Please enter a valid Social Security Number in the format XXX-XX-XXXX');
                return false;
            }

            const income = document.getElementById('income').value;
            if (income <= 0) {
                alert('Please enter a valid income amount');
                return false;
            }

            return true;
        }

        // Format SSN input as user types
        document.getElementById('ssn').addEventListener('input', function(e) {
            let value = e.target.value.replace(/\D/g, '');
            if (value.length > 9) value = value.slice(0, 9);
            if (value.length >= 5) value = value.slice(0, 3) + '-' + value.slice(3, 5) + '-' + value.slice(5);
            else if (value.length >= 3) value = value.slice(0, 3) + '-' + value.slice(3);
            e.target.value = value;
        });
    </script>
</body>
</html>

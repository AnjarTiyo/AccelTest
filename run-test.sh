echo "Updating test script! \n"
git pull origin main

echo "Running test for endpoint ./register \n"

newman run 26190965-1c084688-209f-4b85-95be-b5739c31b98a --folder "01-Registration" --postman-api-key $API_KEY_TEST_ACCEL -e 26190965-7ac02733-c156-4bfc-b345-842422f9c792 -d ./data/registerData.csv 

echo "Running test for endpoint ./login \n"

newman run 26190965-1c084688-209f-4b85-95be-b5739c31b98a --folder "02-Login" --postman-api-key $API_KEY_TEST_ACCEL -e 26190965-7ac02733-c156-4bfc-b345-842422f9c792 -d ./data/loginData.csv 

echo "Running test for endpoint ./getUserProfile \n"

newman run 26190965-1c084688-209f-4b85-95be-b5739c31b98a --folder "03-GetUserProfile" --postman-api-key $API_KEY_TEST_ACCEL -e 26190965-7ac02733-c156-4bfc-b345-842422f9c792

echo "Running test for endpoint ./updateProfile \n"

newman run 26190965-1c084688-209f-4b85-95be-b5739c31b98a --folder "04-UpdateProfile" --postman-api-key $API_KEY_TEST_ACCEL -e 26190965-7ac02733-c156-4bfc-b345-842422f9c792 -d ./data/updateProfileData.csv

echo "Running test for endpoint ./logout \n"

newman run 26190965-1c084688-209f-4b85-95be-b5739c31b98a --folder "05-Logout" --postman-api-key $API_KEY_TEST_ACCEL -e 26190965-7ac02733-c156-4bfc-b345-842422f9c792 -d ./data/logoutData.csv


echo "Test Complete"

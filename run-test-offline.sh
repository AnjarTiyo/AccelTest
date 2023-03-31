echo "Updating test script! \n"
git pull origin main

echo "Running test for endpoint ./register \n"

newman run ./collection/accelerationTest.json --folder "01-Registration" -e ./environment/accell-dev.postman_environment.json -d ./data/registerData.csv 

echo "Running test for endpoint ./login \n"

newman run ./collection/accelerationTest.json --folder "02-Login" -e ./environment/accell-dev.postman_environment.json -d ./data/loginData.csv 

echo "Running test for endpoint ./getUserProfile \n"

newman run ./collection/accelerationTest.json --folder "03-GetUserProfile" -e 2./environment/accell-dev.postman_environment.json

echo "Running test for endpoint ./updateProfile \n"

newman run ./collection/accelerationTest.json --folder "04-UpdateProfile" -e ./environment/accell-dev.postman_environment.json -d ./data/updateProfileData.csv

echo "Running test for endpoint ./logout \n"

newman run ./collection/accelerationTest.json --folder "05-Logout" -e ./environment/accell-dev.postman_environment.json -d ./data/logoutData.csv


echo "Test Complete"

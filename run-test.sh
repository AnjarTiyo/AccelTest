rm report

newman run 26190965-1c084688-209f-4b85-95be-b5739c31b98a --folder "01-Register" --postman-api-key PMAK-6426814d549a525eb47db73c-d72dcc9e3243c0cc3bce567824ce386ed0 -e 26190965-7ac02733-c156-4bfc-b345-842422f9c792 -d ./data/registerData.csv -r allure --reporter-allure-export ./report

newman run 26190965-1c084688-209f-4b85-95be-b5739c31b98a --folder "02-Login" --postman-api-key PMAK-6426814d549a525eb47db73c-d72dcc9e3243c0cc3bce567824ce386ed0 -e 26190965-7ac02733-c156-4bfc-b345-842422f9c792 -d ./data/loginData.csv -r allure --reporter-allure-export ./report


allure serve

allure generate --clean

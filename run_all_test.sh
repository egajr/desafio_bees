echo "Run API Tests"
robot --listener 'allure_robotframework;./api/logs' -d ./api/logs -L debug ./api/tests

echo "Run API Tests"
robot --listener 'allure_robotframework;./web/logs' -d ./web/logs -L debug ./web/tests

echo "Run Report API"
allure serve ./api/logs ./web/logs
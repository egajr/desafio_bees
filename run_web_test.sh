echo "Run WEB Tests"
robot --listener 'allure_robotframework;./web/logs' -d ./web/logs -L debug ./web/tests
echo "Run Report WEB"
allure serve ./web/logs
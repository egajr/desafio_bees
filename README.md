<br />
<p align="center">
  <h1 align="center">Desafio_BEES</h3>
</p>

## About Project

This is a test project as a challenge for bees using the Robot Framework.
### Requirements

* [Install python/pip] (https://docs.python.org/pt-br/3.9/installing/index.html)
* [Install node js] (https://robotframework-browser.org/)
* Command for install depencies for project ```pip install requiriments.txt```

### Run Tests

* Run the command for web test ```robot --listener 'allure_robotframework;./web/logs' -d ./web/logs -L debug ./web/tests```
* Run the command for api test ```robot --listener 'allure_robotframework;./api/logs' -d ./api/logs -L debug ./api/tests```

### Report Allure
* Run the command ```sh report_allure.sh```
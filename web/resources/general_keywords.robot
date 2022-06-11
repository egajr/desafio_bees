**Keywords**
Click On Element
    [Arguments]  ${element}  ${timeout}=${DEFAULT_TIMEOUT}
    Wait For Elements State  ${element}  visible  ${timeout}
    Wait For Elements State  ${element}  enabled  ${timeout}
    Click  ${element}

Fill Input Text
    [Arguments]  ${element}  ${text}  ${timeout}=${DEFAULT_TIMEOUT}
    Wait For Elements State  ${element}  visible  ${timeout}
    Wait For Elements State  ${element}  enabled  ${timeout}
    Fill Text  ${element}  ${text}

Fill Input secret
    [Arguments]  ${element}  ${secret}  ${timeout}=${DEFAULT_TIMEOUT}
    Wait For Elements State  ${element}  visible  ${timeout}
    Wait For Elements State  ${element}  enabled  ${timeout}
    Fill Secret  ${element}  $secret

Validate Text
    [Arguments]  ${element}  ${text}  ${timeout}=${DEFAULT_TIMEOUT}
    Wait For Elements State  ${title_page}  visible  timeout=${DEFAULT_TIMEOUT}  message=This is not correct page
    Get Text  ${title_page}  ==   ${text}   
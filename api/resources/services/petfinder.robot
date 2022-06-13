**Settings**

**Keywords**
Generate token             
    Create Session  generate_token       ${BASE_URL}   verify=True
    ${headers}      Create Dictionary      
    ...             Content-Type=application/x-www-form-urlencoded
    ${body}         Create Dictionary
    ...             grant_type=client_credentials
    ...             client_id=%{API_KEY}
    ...             client_secret=%{SECRET}
    ${response}     POST On Session        generate_token    /oauth2/token
    ...             headers=${headers}
    ...             data=${body}
    ...             expected_status=200
    Set Test Variable  ${token}  ${response.json()["access_token"]}

Get All Animals
    Create Session  get_animals       ${BASE_URL}   verify=True
    ${headers}      Create Dictionary      
    ...             Authorization=Bearer ${token}
    ${parm}  Create Dictionary
    ...             type=dog
    ${response}     GET On Session        get_animals    /animals
    ...             headers=${headers}
    ...             params=${parm}
    ...             expected_status=anything
    [Return]    ${response}

Get A Animal By Type
    [Arguments]  ${type_animal}
    Create Session  get_animals       ${BASE_URL}   verify=True
    ${headers}  Create Dictionary      
    ...         Authorization=Bearer ${token}
    ${parm}     Create Dictionary
    ...         type=${type_animal}
    ${response}     GET On Session  get_animals     /animals
    ...             headers=${headers}
    ...             params=${parm}
    ...             expected_status=anything
    [Return]    ${response}

Get A Type Animal
    [Arguments]  ${type_animal}
    Create Session  get_type       ${BASE_URL}   verify=True
    ${headers}  Create Dictionary      
    ...         Authorization=Bearer ${token}
    ${response}  GET On Session  get_type    /types/${type_animal}   headers=${headers}  expected_status=anything  
    [Return]    ${response}             
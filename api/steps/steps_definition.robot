**Keywords**
I am authorized in the Petfinder API
    Generate token

I perform the GET operation for /animals with animal type filter equal to ${type_animal}
    ${resp}  Get A Animal By Type  ${type_animal}
    Set Test Variable  ${resp}

Response status code should be ${code}
    Status Should Be    ${code}    ${resp}

Must have only animal type ${animal} in response
    ${length}  Get Length  ${resp.json()['animals']}
    FOR  ${index}  IN RANGE  ${length}
        Should Be Equal As Strings  ${animal}  ${resp.json()['animals'][${index}]['type']}
    END

I perform the GET operation for /types with animal type filter equal to ${type_animal}
    ${resp}  Get A Type Animal  ${type_animal}
    Set Test Variable  ${resp} 
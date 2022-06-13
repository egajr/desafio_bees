**Settings**
Resource  ${EXECDIR}/api/resources/base_api.robot

**Test Cases**
Successfully GET a Dog-type animal by Query Parameters
    GIVEN I am authorized in the Petfinder API
    WHEN I perform the GET operation for /animals with animal type filter equal to Dog
    THEN Response status code should be 200
    AND Must have only animal type Dog in response

Successfully GET a Cat-type animal by Query Parameters
    GIVEN I am authorized in the Petfinder API
    WHEN I perform the GET operation for /animals with animal type filter equal to Cat
    THEN Response status code should be 200
    AND Must have only animal type Cat in response

Query non-existent animal type by Path Parameter
    GIVEN I am authorized in the Petfinder API
    WHEN I perform the GET operation for /types with animal type filter equal to Fish
    THEN Response status code should be 404    
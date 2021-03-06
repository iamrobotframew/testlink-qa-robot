*** Settings ***

Documentation  A test suite with a single test for creating a new Custom Field. This test has
...            a workflow that is created using keywords from the resource file.

Resource       ../../../../resource/testlink.robot

Test Teardown  Run keywords  testlink.Delete Test Plan Management  ${TestPlanName}
...            AND           Close browser


*** Variables ***

${TestPlanName}  testPlan53
${TestPlanDescription}  DescriptionOfTestPlan53

*** Test Cases ***

Create new test plan

     testlink.Login as admin correct
     testlink.Create New Test Plan ${TestPlanName}
     #testlink.Create New Test Plan ${TestPlanName} ---commented by mohammed
     #testlink.Login as admin correct
     #loginPage.Check there is no warning about login
     #assignRolesForTP.Assign Roles for TP

*** Settings ***

Documentation  A test suite with a single test for creating a new Custom Field. This test has
...            a workflow that is created using keywords from the resource file.

Resource       ../../../../resource/testlink.robot

Test Setup  Run keywords    testlink.Create new Test Project
...             AND         headerPage.Go to index page and change testproject
...             AND         testlink.Create New Test Plan ${TestPlanManagementName}
...             AND         testlink.Create New Test Plan ${TestPlanManagementName1}
...             AND         testlink.Create Build with name ${buildName}
...             AND         testlink.Create test suite ${testSuiteName} in test project ${newTestProjectName}
...             AND         testlink.Create test case ${testCaseName} in ${testSuiteName}
...             AND         testlink.Add Test Case To the Test Plan

Test Teardown  Run keywords     testlink.Delete test project  ${newTestProjectName}  ${newTestProjectPrefix}
...             AND             Close browser




*** Variables ***

${newTestProjectName}               IamNewTestProject
${newTestProjectPrefix}             ThisIsMyPrefix
${TestPlanManagementName}           testPlan1
${TestPlanManagementName1}          testPlan2
${EditTestPlanName}                 testPlan11
${TestPlanManagementDescription}    DescriptionDescription
${Description}                      Bla Bla Descritpion
${testCaseNameNew}                  tc1
${testCaseName}                     tc1
${testSuiteName}                    suite1
${buildName}                        buildName

*** Test Cases ***

Edit Test Plan
    testlink.Order By Test Case, Name, Build In Test Plan Management
    testlink.Make all Test Plan Active/Inactive
    testlink.Edit And Check Test Plan


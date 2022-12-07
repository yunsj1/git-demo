*** Settings ***
Library    ../libdemo/libsort1.py
Library    shutil
Library    Dialogs
Library    String
Library    Collections

*** Variables ***

@{testnum}   3  2  5  4  1
@{expectresultlist}   1  2  3  4  5

*** Keywords ***
num check
   FOR   ${each}   IN   @{testnum}
      ${checkint}   Evaluate   isinstance(${each}, int)
      Run Keyword If  ${checkint} != True  Run Keywords  log many  failnum: ${each}  AND  FAIL
   END
numsort1
   ${numappend}   Evaluate   ",".join(${testnum})
   ${result}  Sorts Big   ${numappend}
   [Return]  ${result}
   
*** Test Cases ***
case1 sortnum1
   [Setup]   Log To Console    \n ---case setup --- 
   num check    #int check
   ${result}  numsort1   #sort()
   Log To Console  sort result：${result} 
   Lists Should Be Equal  ${result}  ${expectresultlist}
   [Teardown]   Log To Console   \n ---case teardown ---



   
   

 

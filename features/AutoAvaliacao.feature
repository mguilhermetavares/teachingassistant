Feature: self-evaluation
As a student of Engenharia de Software e Sistemas
I want to assign a concept of self-evaluation to all the goals presented 
So that The teacher can view my self-evaluation of each goals.

Scenario: self-evaluation
Given I am at the "Self-evaluation Page"
When I select the evaluation value at Spinner Button of all goals AND I select to confirm information
Then I can see a confirmation message

Scenario: self-evaluation
Given the student "Guilherme" has attributed "MPA" to himself for goal “Write Requirements in Gherkin format”
When the information is submitted
Then the evaluation is stored.

Scenario: self-evaluation
Given I am at the "Self-evaluation Page"
When I not select the evaluation value at Spinner Button of all goals AND I select to confirm information
Then I can see a error message

Scenario: self-evaluation
Given the student "Guilherme" has attributed "MPA" to himself for goal “Write Requirements in Gherkin format” AND has not attributed any evaluation for goal "Write Scenarios"
When the information is submitted
Then the evaluation isn`t stored.

Scenario: No discrepancy found
    Given The students "Guilherme", "Jose", and "Joao" have submitted their self-evaluation
    And The student "Guilherme" has 20% discrepancy
    And The students "Jose" and "Edjan" have 0% discrepancy each
    When Professor "Paulo Borba" requests the "Discrepâncias" page
    Then Professor "Paulo Borba" sees an error message

Scenario: Discrepancy found
    Given The students "Guilherme", "Jose", and "Joao" have submitted their self-evaluation
    And The student "Guilherme" has discrepancy >= 25%
    And The students "Jose" and "Joao" have discrepancy < 25%
    When Professor "Paulo Borba" requests the "Discrepâncias" page
    Then Professor "Paulo Borba" sees a "Discrepâncias" page with the fields "Quantidade", "Porcentagem" holding the values "1", "33.3%"
    And The list "Alunos" has just the name "Guilherme" in it. Extra info branch discrepantes
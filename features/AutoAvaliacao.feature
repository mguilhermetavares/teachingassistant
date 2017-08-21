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

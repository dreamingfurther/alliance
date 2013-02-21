Feature: As an alliance admin I can add a chapter so that new chapters can join the game

Scenario: Add a chapter
  Given I am on the admin homepage
  When I add a chapter with a name
  Then I can see that chapter on the chapters page

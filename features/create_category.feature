Feature: Create Categories
  As a blog administrator
  In order to categorize my blogs
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully Create categories
    Given I am on the categories page
    When I fill in "category_name" with "MyName"
    And I fill in "category_keywords" with "MyKeyword"
    And I fill in "category_permalink" with "MyCategory"
    And I fill in "category_description" with "MyDescription"
    And I press "Save"
    Then I should be on the categories page
    And I should see "Category was successfully saved."
    And I should see "MyName"
    And I should see "MyKeyword"
    And I should see "MyCategory"
    And I should see "MyDescription"
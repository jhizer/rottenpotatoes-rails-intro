Feature: User can manually add a movie by providing movie title, rating, and release date
  
    Scenario: Add a movie
      Given I am on the RottenPotatoes home page
      When I follow "Add new movie"
      Then I should be on the Create New Movie page
      When I fill in "Title" with "The Hunger Games"
      And I select "PG-13" from "Rating"
      And I select "2012" from "movie_release_date_1i"
      And I select "March" from "movie_release_date_2i"
      And I select "23" from "movie_release_date_3i"
      And I press "Save Changes"
      Then I should be on the RottenPotatoes home page 
      And I should see "The Hunger Games" 
      And I should see "PG-13"
      And I should see "2012-03-23 00:00:00 UTC"
require 'spec_helper'

RSpec.describe 'Foods Index', type: :feature do
  describe "As a User, when I visit '/'" do
    before(:each) do
      visit '/'
    end

    it "I fill in the search form with 'sweet potatoes, I click 'Search' I should be on page '/foods'" do
    
      within('input#q')do
        fill_in 'q', with: 'sweet potatoes'
        click_button 'Search'
      end

      expect(current_path).to eq(foods_path)
    end
  end
end
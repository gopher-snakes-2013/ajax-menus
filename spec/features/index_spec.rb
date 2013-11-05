require 'spec_helper'

feature 'Guest', :js => true do
  context "on the index page" do
    before :each do
      visit root_path
    end

    it "finds the index" do
      expect(page).to have_content "Welcome to Awesome Menus"
    end

    it "can post a menu" do
      fill_in("menu_meal", :with => "Brunch")
      click_on("Add Menu")
      expect(page).to have_content("Brunch")
    end
  end

end
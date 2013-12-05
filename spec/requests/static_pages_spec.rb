require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do 
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the right title" do 
      visit '/static_pages/home'
      page.should have_selector('title',
                       :text => 'Ruby On Rails Tutorial | Home')
    end

  end
    
  describe "Help page" do
    it "should have the h1 'Help'" do

      visit '/static_pages/help'
      page.should have_selector('h1', :text  => 'Help')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                       :text => 'Ruby On Rails Tutorial | Help')
    end

  end
  describe "About page" do
    it "should have the h1 'About us'" do

      visit '/static_pages/about'
      page.should have_selector('h1', :text  => 'About us')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                       :text => 'Ruby On Rails Tutorial | About')
    end

  end
  describe "Contact page" do
    it "should have the h1 'Contact'" do

      visit '/static_pages/help'
      page.should have_selector('h1', :text  => 'Contact')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                       :text => 'Ruby On Rails Tutorial | Contact')
    end

  end

end

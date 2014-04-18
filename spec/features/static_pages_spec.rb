require 'spec_helper'

#Note: Things inside the "" are purely for readers when rspec runs.
describe "Static pages" do

	describe "Home page" do
		it "should have the h1 'Sample App'" do
			#Simulates visiting the webpage.
			visit '/static_pages/home'
			#Uses the page variable created by Capybara to ensure the page has the right content.
			page.should have_selector('h1', :text => 'Sample App')
		end

		it "should have the title 'Home'" do
			visit '/static_pages/home'
			#Title test - checks the title tag in the HTML code.
			#Note: Text can be a partial match to return true. & use :text => to reference a hash table.
			page.should have_title("Ruby on Rails Tutorial Sample App | Home")
		end
	end

	describe "Help page" do

		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_title("Ruby on Rails Tutorial Sample App | Help")
		end
	end

	describe "About page" do
		it "should have the h1 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About Us')
		end
		#Note: The keywords are case sensitive.
		it "should have the title 'About Us'" do
			visit '/static_pages/about'
			#Note: The have_selector('title', :text => " ") doesn't work because rspec doesn't
			#automatically look at all file information.
			page.should have_title("Ruby on Rails Tutorial Sample App | About Us")
		end
	end

end
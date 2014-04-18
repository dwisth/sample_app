require 'spec_helper'

#Note: Things inside the "" are purely for readers when rspec runs.
describe "Static pages" do
	describe "Home page" do
		it "should have the content 'Sample App'" do
			#Simulates visiting the webpage.
			visit '/static_pages/home'
			#Uses the page variable created by Capybara to ensure the page has the right content.
			page.should have_content('Sample App')
		end
	end
end


module ::RSpec::Core
  class ExampleGroup
    include Capybara::DSL
    include Capybara::RSpecMatchers
  end
end
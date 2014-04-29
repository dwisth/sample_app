require 'spec_helper'
#Note: The full title method in rspec/support is automatically included to enable us to use the full_title() method.

describe "Static pages" do
	subject { page }
	
	describe "Home page" do
		before { visit root_path }

		it { should have_selector('h1', text: 'Sample App') }
		it { should have_title(full_title('')) }
		it { should_not have_title('| Home')}
	end
	
	describe "Help page" do
		before { visit help_path }

		it { should have_selector('h1', text: 'Help') }
		it { should have_title(full_title('Help')) }
	end
	
	describe "About page" do
		before { visit about_path }
		
		it { should have_selector('h1',text: 'About') }
		it { should have_title(full_title('About Us')) }
	end
	
	describe "Contact page" do
		before { visit contact_path }
		
		it { should have_selector('h1', text: 'Contact') }
		it { should have_title(full_title('Contact')) }
	end
end


=begin
equire 'spec_helper'

#Note: Things inside the "" are purely for readers when rspec runs.
describe "Static pages" do

	describe "Home page" do
		before{ visit root_path}
		it "should have_selector the h1 'Sample App'" do
			#Simulates visiting the webpage.
			visit root_path
			#Uses the page variable created by Capybara to ensure the page has the right content.
			page.should have_selector('h1', :text => 'Sample App')
		end

		it "should have the base title" do
			visit root_path
			page.should have_title("Ruby on Rails Tutorial Sample App")
		end

		it "should not have a custom page title" do
			visit root_path
			page.should_not have_title("| Home")
		end

	end

	describe "Help page" do

		it "should have the h1 'Help'" do
			visit help_path
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have the title 'Help'" do
			visit help_path
			page.should have_title("Ruby on Rails Tutorial Sample App | Help")
		end
	end

	describe "About page" do
		it "should have the h1 'About Us'" do
			visit about_path
			page.should have_selector('h1', :text => 'About Us')
		end
		#Note: The keywords are case sensitive.
		it "should have the title 'About Us'" do
			visit about_path
			#Note: The have_selector('title', :text => " ") doesn't work because rspec doesn't
			#automatically look at all file information.
			page.should have_title("Ruby on Rails Tutorial Sample App | About Us")
		end
	end

	describe "Contact page" do
		
		it "should have the h1 'Contact'" do
			visit contact_path
			page.should have_selector('h1', :text => 'Contact')
		end

		it "should have title 'Contact'" do
			visit contact_path
			page.should have_title("Ruby on Rails Tutorial Sample App | Contact");
		end

	end

end
=end
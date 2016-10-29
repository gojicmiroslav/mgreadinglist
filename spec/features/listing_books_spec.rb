require 'rails_helper'

RSpec.feature "Listing books", :feature do
	
	it "list books" do
		visit '/books'
	end

end
require 'test_helper'

class ListingBooksTest < ActionDispatch::IntegrationTest

	setup do
		Book.create!(title: 'New Title', rating: 5)
		Book.create!(title: 'New Title 2', rating: 4)
	end
  
	test "listing book" do
		get '/books'

		assert_equal 200, response.status
		assert_equal Mime[:json], response.content_type

		assert_equal Book.count, JSON.parse(response.body).size
	end

end

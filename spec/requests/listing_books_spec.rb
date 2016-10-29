require 'rails_helper'

RSpec.describe "ListingBooks", type: :request do
  
  describe "GET books" do
    it "list books" do
   		get '/books'
   		puts response.body
   		expect(response).to have_http_status(200)
    end
  end
end

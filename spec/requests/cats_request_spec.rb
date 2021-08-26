require 'rails_helper'

RSpec.describe "Cats", type: :request do
    it "doesn't create a cat without a name" do
        cat_params = {
            cat: {
            age: 2,
            enjoys: 'Walks in the park'
        }
        }
        # Send the request to the  server
        post '/cats', params: cat_params
        # expect an error if the cat_params does not have a name
        expect(response.status).to eq 422
        # Convert the JSON response into a Ruby Hash
        json = JSON.parse(response.body)
        # Errors are returned as an array because there could be more than one, 
        # if there are more than one validation failures on an attribute.
        expect(json['name']).to include "can't be blank"
    end
end
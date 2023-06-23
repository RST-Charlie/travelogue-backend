require 'rails_helper'

RSpec.describe "Trips", type: :request do
    # test user created and locally scoped
    let(:user) { User.create(
        email: 'test@example.com',
        password: 'password',
        password_confirmation: 'password'
    )}

    # validates request method GET
    describe "GET /index" do
        it "gets a list of trips" do
            trip = user.trips.create(
                title: "River rafting trip",
                entry: "This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.",
                country: "United States",
                region:"North America",
                user_id: user.id
            )
            get '/trips'

            trip = JSON.parse(response.body)
            expect(response).to have_http_status(200)
            expect(trip.first['title']).to eq("River rafting trip")
            expect(trip.first['entry']).to eq("This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.")
            expect(trip.first['country']).to eq("United States")
            expect(trip.first['region']).to eq("North America")
        end
    end

    # validates request method POST
    describe "POST /create" do
        it "creates a new trip" do
            trip_params = {
                trip: {
                    title: "River rafting trip",
                    entry: "This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.",
                    country: "United States",
                    region:"North America",
                    user_id: user.id
                }
            }
            post '/trips', params: trip_params

            json = JSON.parse(response.body)
            expect(json['title']).to eq("River rafting trip")
            expect(json['entry']).to eq("This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.")
            expect(json['country']).to eq("United States")
            expect(json['region']).to eq("North America")
        end
    end
    
end
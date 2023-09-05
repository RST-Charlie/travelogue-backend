## Travelouge Backend

Travelouge is a backend component designed to journal the user's travel entries. Capture, record, and reflect on your travels with Travelouge.

---

## Team

Product Owner: Scott Tuschl
Product Manager: Ramgel Romo
Lead Developer: Sarah Cherry
Design Lead: Suri Robles

---

## Dependencies

Below are the major dependencies and a brief description of their role:

- rails (7.0.5): Ruby on Rails is a server-side web application framework.
- pg (1.5.3): This gem allows Ruby on Rails to communicate with the PostgreSQL database.
- puma (5.6.6): A Ruby web server.
- importmap-rails: For handling JavaScript with ESM import maps.
- turbo-rails: Hotwire's SPA-like page accelerator.
- stimulus-rails: Hotwire's modest JavaScript framework.
- jbuilder (2.11.5): Allows you to create JSON structures.
- tzinfo-data: Provides daylight savings time data.
- bootsnap (1.16.0): Reduces boot times through caching.
- rspec-rails (6.0.3): Testing framework for Rails.
- devise (4.9.2): For authentication.
- devise-jwt (0.11.0): JWT token authentication for Devise.
- rack-cors (2.0.1): Middleware for handling Cross-Origin Resource Sharing (CORS).

---

## Note

Gems that are commented out with a # in the Gemfile are optional dependencies and are not installed by default. Uncomment them in the Gemfile if you wish to include them.

---

## Setup

Install dependencies:

Ensure you have Ruby 3.2.0 and Bundler installed. Navigate to the project directory and run:

bash

- $ bundle install

This command will install all the required gems and dependencies for the project.

---

## Database setup:

Ensure you have PostgreSQL installed and running:

bash

- $rails db:create
- $rails db:migrate

---

## Running the server:

Start the server using:

bash

- $ rails server

You should now have the Travelouge backend running and waiting for connections!

---

## Testing

To run the test suite, execute:

bash

- $ rspec

Make sure to keep your tests up-to-date and run them frequently to ensure the integrity of the application.

---

## Contributing

Pull requests are welcome. Please make sure to update tests as appropriate and adhere to our coding standards.

---

## License

**NONE**

Enjoy your travels and journaling with Travelouge! 🌍✈️📖

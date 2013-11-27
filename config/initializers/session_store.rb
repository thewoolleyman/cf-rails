# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cf-rails_session',
  :secret      => '933a3b6eb03514debdb828235a98b9e856ad5a89928375ccba1e93216066b454f01aa0809e4985b41c1898f2ab4223ab140a5757d10e409a0ebf2f0f8811cbc6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

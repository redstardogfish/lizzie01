# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lizzie01_session',
  :secret      => '9d6670fb58a3a618b67611ad79c0f12add8253da50e640249bdd236520f5a5fc7531f1e65873ad3700e5aa0154aa67fc77758ffb4313771d5c65a1a2fd52258f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

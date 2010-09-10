# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gmerchtracker_session',
  :secret      => '5eacca0eae9c0c0a327e04ccb3316163405c9975a37088c9bdeac595bec6a99c7a777baebd707694f5cd702aa704299377c70b584b4f8433606f3953858b6f62'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

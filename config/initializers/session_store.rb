# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rjcrop23_session',
  :secret      => '7e19358c7b4087a6f5f8d4cab959b9c990c8a4f6e344f228f3648605d459f11604814eccc7a8acf50fccdd059f0f8c74b6bb5c4715dadb46d5f9681f1fce7f10'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

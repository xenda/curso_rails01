# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_misuperblog_session',
  :secret      => '05d7daa6b25e2e7b884f795aa638be82face8d142ba2fc56eb865553de35b6dd13a108f652253de7e79d788957a0e90cf7dfddf9c71dbcf96cc3883c84e171ab'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

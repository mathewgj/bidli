# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_twapp2_session',
  :secret      => '2350680ba25d9079e0781d68820ddf9bbb8b836cce635d26014b49c40526dcfb4cc5d46dbd3847bd32092255ed780bcf1347866e6395785cd7732b929ff33540'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

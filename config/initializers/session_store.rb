# Be sure to restart your server when you modify this file.

DemoMigration::Application.config.session_store :cookie_store, :key => '_demo-migration_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# DemoMigration::Application.config.session_store :active_record_store

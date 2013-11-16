# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
SorceryPostgresql::Application.config.secret_key_base = '3d55772e96d3c8ebd81f6e46a2b1adc3b3534fc2cba9a965d570cd241e742cc60a8a4d612d8919927d992012e7ccc3c7475cd501f2d3e9642711c5bd617a295b'

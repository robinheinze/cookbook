# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Cookbook::Application.config.secret_key_base = '7b3078298b586da1a09dd74733846e1192a1a29d6de22e9de477bc6e84123a33033b5bb32adc399ed9feb4aa255abce1b323d4e468bbf94683065c853a0ddc22'

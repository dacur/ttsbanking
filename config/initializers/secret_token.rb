# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Banking::Application.config.secret_key_base = 'c2a480303cddcada2a531526aa420f65c5c2a575d4f905898a9d809939471dca2f7b65852113400296149bc5b689ad2bd31a380e20cfee486aba4e94e09e4df7'

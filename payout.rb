require 'stripe'
require 'dotenv/load'

Stripe.api_key = ENV['STRIPE_SECRET_KEY']

balance = Stripe::Balance.retrieve()
puts balance.available

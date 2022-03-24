require 'rack'

# Lobster
# Static files
# Static page with image


run ->(env) { [200, { 'Content-Type' => 'text/plain' }, ['Hello, world!']] }


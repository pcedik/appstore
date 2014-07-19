# For a simple environment like we have, our app, web, and db are all on a single server
server "185.21.221.243:443", user: 'rails', roles: %w{app web db}
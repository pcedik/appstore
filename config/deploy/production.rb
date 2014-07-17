# For a simple environment like we have, our app, web, and db are all on a single server
server "192.168.21.10", user: 'rails', roles: %w{app web db}
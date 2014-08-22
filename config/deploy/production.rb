# For a simple environment like we have, our app, web, and db are all on a single server
server "appstore.cedik.net:443", user: 'rails', roles: %w{app web db}
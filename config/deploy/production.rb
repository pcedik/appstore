# For a simple environment like we have, our app, web, and db are all on a single server
server "nupaky.cedik.net", user: 'rails', roles: %w{app web db}
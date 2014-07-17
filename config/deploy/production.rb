set :stage, :production
set :branch, "master"
# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

# role :app, %w{rails@185.21.221.243:443}
# role :web, %w{rails@185.21.221.243:443}
# role :db,  %w{rails@185.21.221.243:443}

role :app, %w{rails@192.168.21.10}
role :web, %w{rails@192.168.21.10}
role :db,  %w{rails@192.168.21.10}



# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

# server 'cedik.net', user: 'rails', roles: %w{app }, my_property: :my_value


# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
set :ssh_options, {
    keys: %w(/home/robot/.ssh/id_rsa),
    forward_agent: false,
    auth_methods: %w(publickey password)
}
#
# And/or per server (overrides global)
# ------------------------------------
# server '185.21.221.243',
#   user: 'rails',
#   roles: %w{web app},
#   ssh_options: {
#     #user: 'user_name', # overrides user setting above
#     #keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }

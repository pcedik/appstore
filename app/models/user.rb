class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:google_oauth2]

  	def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
	    data = access_token.info
	    user = User.where(:email => data["email"]).first

	    # Uncomment the section below if you want users to be created if they don't exist
	    unless user
	        user = User.create(provider: access_token.provider, uid: access_token.uid,name: data["name"],
	            email: data["email"]
	        )
	    end
	    user
	end

end

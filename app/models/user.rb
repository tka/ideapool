# include MD5 gem, should be part of standard ruby install
require 'digest/md5'

class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :confirmable,
		:recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :projects

	def avatar_url
		# create the md5 hash
    hash = Digest::MD5.hexdigest(email.downcase)
		# compile URL which can be used in <img src="RIGHT_HERE"...
		image_src = "http://www.gravatar.com/avatar/#{hash}"
	end

end

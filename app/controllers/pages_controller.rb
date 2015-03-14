class PagesController < ApplicationController
	#In the Pages controller, use before_action to require 
	#users to be logged in, except on the contact and help actions.

	before_action :require_user, except: [:contact, :help]

	def contact
	end

	def help
	end

	def about
	end
end

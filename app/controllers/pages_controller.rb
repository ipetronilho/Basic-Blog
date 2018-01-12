class PagesController < ApplicationController
	def about
		#send data from controller to view
		@title = 'About Us'
		@content = 'This is the about page.'
	end

end

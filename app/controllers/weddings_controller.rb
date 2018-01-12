class WeddingsController < ApplicationController
	def new
		@wedding = Wedding.new
	end

	def create
	end
end

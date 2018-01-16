class WeddingsController < ApplicationController

	def new
		@wedding = Wedding.new
	end

	def create
		@wedding = Wedding.new(wedding_parameters)
		if @wedding.save
			flash[:notice] = "Wedding created successfully."
			redirect_to @wedding
		else
			flash[:notice] =  "Error creating wedding. Please try again."
			render :new
		end
	end

	def show
		@wedding = Wedding.find(params[:id])
	end

	private

		def wedding_parameters
			params.require(:wedding).permit(:wedding_date, :first_partner, :second_partner, :user_id)
		end
end
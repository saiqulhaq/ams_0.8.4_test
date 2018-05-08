class UsersController < ApplicationController
	def show
		user = User.find params.require(:id)
		data = UserSerializer.new(user)
		render json: data
	end
end

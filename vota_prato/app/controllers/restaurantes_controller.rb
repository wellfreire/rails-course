class RestaurantesController < ApplicationController
	def index
		@restaurantes = Restaurante.order :nome
	end
end
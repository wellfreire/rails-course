class RestaurantesController < ApplicationController
	def index
		# @restaurantes = Restaurante.teste("pf").order :nome
		@restaurantes = Restaurante.order :nome
	end

	def show
		@restaurante = Restaurante.find params[:id]
	end

	def new
		@restaurante = Restaurante.new
	end

  def create
  	# rails #3
    restaurante = Restaurante.new params[:restaurante]
    # rails #4
    # restaurante = Restaurante.new params.require(:restaurante).permit(:nome, :endereco, :especialidade)
    # params.require(:restaurante).permit! # unlock all
    restaurante.save

    redirect_to action: "show", id: restaurante
  end

	def destroy
		@restaurante = Restaurante.find params[:id]
		@restaurante.destroy

		redirect_to action: 'index'
	end

	private

		def restaurante_params
			
		end

end
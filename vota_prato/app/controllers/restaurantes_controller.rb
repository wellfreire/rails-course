class RestaurantesController < ApplicationController
	before_filter :set_restaurante, only: [:edit, :update, :show, :destroy]

	def index
		# @restaurantes = Restaurante.teste("pf").order :nome
		@restaurantes = Restaurante.order :nome

		respond_to do |format|		
			format.html
			format.xml {render xml: @restaurantes}
			format.json {render json: @restaurantes}
		end
	end

	def show		
	end

	def new
		@restaurante = Restaurante.new
	end

  def create
  	# rails #3
    @restaurante = Restaurante.new params[:restaurante]
    # rails #4
    # restaurante = Restaurante.new params.require(:restaurante).permit(:nome, :endereco, :especialidade)
    # params.require(:restaurante).permit! # unlock all
    if @restaurante.save
	    redirect_to action: "show", id: @restaurante
    else
    	render "new"
  	end
  end

  def edit
	end

	def update
		if @restaurante.update_attributes params[:restaurante]
			redirect_to action: "show", id: @restaurante
		else
			render "edit"
		end
	end

	def destroy
		@restaurante.destroy

		redirect_to action: 'index'
	end

	private
		def set_restaurante
			@restaurante = Restaurante.find params[:id]
		end
end
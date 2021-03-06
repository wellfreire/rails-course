class RestaurantesController < ApplicationController
	before_filter :set_restaurante, only: [:edit, :update, :show, :destroy]
	respond_to :html, :json, :xml

	def index
		# @restaurantes = Restaurante.teste("pf").order :nome
		@restaurantes = Restaurante.order("nome").page(params['page']).per(3)

		# respond_to do |format|		
		# 	format.html
		# 	format.xml {render xml: @restaurantes}
		# 	format.json {render json: @restaurantes}
		# end
		respond_with @restaurantes
	end

	def show
		# respond_to do |format|		
		# 	format.html
		# 	format.xml {render xml: @restaurante}
		# 	format.json {render json: @restaurante}
		# end
		respond_with @restaurante
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
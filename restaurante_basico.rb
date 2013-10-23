#coding:utf-8

class Restaurante

	attr_accessor :nota

	def initialize(nome)
		puts "Criando um novo restaurante: #{nome}"

		@nome = nome
		
		@@total ||= 0
		@@total = @@total + 1
	end

  def qualifica(msg="Obrigado!")
  	puts "A nota do #{@nome} foi #{@nota}. #{msg}"
  end

class << self

  def relatorio
  	@@total ||= 0

		puts "Foram criados #{@@total} restaurantes"
  end

end

end

restaurante_um = Restaurante.new("Fasano")
restaurante_um.nota = 10
restaurante_um.qualifica

restaurante_dois = Restaurante.new("Fogo de chão")
restaurante_dois.nota = 1
restaurante_dois.qualifica("Comida ruim.")

Restaurante.relatorio
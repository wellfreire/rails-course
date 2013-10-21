#coding:utf-8

class Restaurante	
	def qualifica(nota, msg="Obrigado!")
		puts "A nota do restaurante foi #{nota}. #{msg}"
	end
end

restaurante_um = Restaurante.new
restaurante_dois = Restaurante.new

restaurante_um.qualifica 10
restaurante_dois.qualifica 1, "Ruim!"
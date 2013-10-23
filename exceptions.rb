#coding: UTF-8

# print "Digite o numero: "
# numero = gets.to_i

# begin
# 	resultado = 100 / numero
# rescue
# 	puts "Numero digitado invalido!"
# 	exit
# end

# puts "100/#{numero} é #{resultado}"

class IdadeInsuficienteException < Exception
end

def verifica_idade(idade)
	unless idade > 18
		raise IdadeInsuficienteException,
			"Voce precisa ser maior de idade para jogar violentos!"
	end
end

idade = gets.to_i

begin
	verifica_idade idade
rescue IdadeInsuficienteException => e
	puts "Foi lancada a exception: #{e}"
rescue ArgumentError => e
	puts "Lancou: #{e}"
end
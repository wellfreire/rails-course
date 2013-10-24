class Pessoa
	attr_accessor :nome, :idade

	def method_missing(method, *args)
		m = method.to_s.split "_"
		if "#{m[0]}_#{m[1]}" =~ /\Afind_by/
			puts self.send(m[2].to_sym)
		end
	end
end

p1 = Pessoa.new
p1.nome = "Felipe"
p1.idade = 29

p2 = Pessoa.new
p2.nome = "Diego"
p2.idade = 23

p1.find_by_nome #Felipe
p2.find_by_nome #Diego

p1.find_by_idade #29
p2.find_by_idade #29
class Restaurante < ActiveRecord::Base
  attr_accessible :nome, :endereco, :especialidade
end

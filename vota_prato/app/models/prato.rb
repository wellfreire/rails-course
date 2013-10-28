#encoding: UTF-8

class Prato < ActiveRecord::Base
  attr_accessible :nome, :restaurante_id

  has_and_belongs_to_many :restaurantes
  has_one :receita

  validates_presence_of :nome, message: " - deve ser preenchido"
  validates_uniqueness_of :nome, message: " - já cadastrado"
  validate :validate_presence_of_more_than_on_restaurante

  def validate_presence_of_more_than_on_restaurante
  	errors.add("restaurantes", 
  		"deve haver ao menos um restaurante") if restaurantes.empty?
  end
end

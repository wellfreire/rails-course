#encoding: UTF-8

class Qualificacao < ActiveRecord::Base
  attr_accessible :nota, :valor_gasto, :restaurante_id, :cliente_id

  validates_presence_of :nota, message: " - deve ser preenchido"
  validates_presence_of :valor_gasto, message: " - deve ser preenchido"
  validates_presence_of :cliente_id, :restaurante_id
  validates_associated :cliente, :restaurante

  validates_numericality_of :nota,
  							greater_than_or_equal_to: 0,
  							less_than_or_equal_to: 10,
  							message: " - deve ser um número entre 0 e 100"
  validates_numericality_of :valor_gasto,
  							greater_than: 0,
  							message: " - deve ser um número maior que 0"

  belongs_to :cliente
  belongs_to :restaurante

  has_many :comentarios, as: :comentavel
end

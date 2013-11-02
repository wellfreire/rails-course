class Album < ActiveRecord::Base
  attr_accessible :descricao

  belongs_to :usuario
end

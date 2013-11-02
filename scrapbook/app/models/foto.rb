class Foto < ActiveRecord::Base
  attr_accessible :foto

  belongs_to :album, :usuario
end

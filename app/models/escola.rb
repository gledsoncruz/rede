class Escola < ActiveRecord::Base
  has_one :usuario, :as => :cadastro
  has_and_belongs_to_many :mergulhadores, :join_table => 'escolas_mergulhadores'
  
  validates :responsavel, :length => { :within =>  3..45, :message => " deve ter entre 3 e 45 caracteres." }
  validates :nome, :length => { :within =>  3..60, :message => " deve ter entre 3 e 60 caracteres." }
  validates :localizacao, :length => { :within =>  3..80, :message => " deve ter entre 3 e 80 caracteres." }
end

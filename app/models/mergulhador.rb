class Mergulhador < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "165x148>" }
  
  has_one :usuario, :as => :cadastro
  has_and_belongs_to_many :escolas
  has_many :mergulhos
  
  validates :nome, :length => { :within =>  3..45, :message => " deve ter entre 3 e 45 caracteres." }
  validates :sexo, :presence => { :message => " é obrigatório." }
end

class Mergulho < ActiveRecord::Base
  belongs_to :mergulhador
  
  validates :nome_local, :local_mergulho, :length => { :within =>  3..45, :message => " deve ter entre 3 e 45 caracteres." }
  validates :temperatura, :length => { :within =>  3..20, :message => " deve ter entre 3 e 20 caracteres." }
  validates :profundidade, :numericality => true
  
  acts_as_gmappable
      def gmaps4rails_address
          local_mergulho
      end
      def gmaps4rails_infowindow
        "<h4>#{nome_local}</h4>" << "<h4>#{local_mergulho}</h4>"
      end
end

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def atualiza(fk, tipo, pk)
    ActiveRecord::Base.connection.execute("update usuarios set cadastro_id=#{fk}, cadastro_type='#{tipo}' WHERE id=#{pk}")
  end
end

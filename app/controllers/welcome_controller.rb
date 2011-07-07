class WelcomeController < ApplicationController
  before_filter :authenticate_usuario!
  
  def index
    if (current_usuario.tipo == 2) && (current_usuario.cadastro_id == nil)
      redirect_to '/mergulhadores/new'
    elsif (current_usuario.tipo == 2) && (current_usuario.cadastro_id != nil)
      redirect_to "/mergulhadores/#{current_usuario.cadastro_id}"
    elsif (current_usuario.tipo == 1) && (current_usuario.cadastro_id == nil)
      redirect_to '/escolas/new'
    else
      redirect_to "/escolas/#{current_usuario.cadastro_id}"
    end
  end

end

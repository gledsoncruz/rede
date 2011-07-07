class EscolasController < ApplicationController
  before_filter :authenticate_usuario!, :load
  
  def load
    @escola = Escola.new
    @mergulhadores = Mergulhador.find(:all)
  end
  
  def find
    @escola = Escola.find(current_usuario.cadastro_id)
  end

  def show
    find
  end

  def new
  end

  def create
    @escola = Escola.new(params[:escola])
    if @escola.save
      atualiza(@escola.id, @escola.class, current_usuario.id)
      redirect_to @escola, :notice => "O registro foi inserido com sucesso."
    else
      render :action => 'new'
    end
  end

  def edit
    find
  end

  def update
    find
    if @escola.update_attributes(params[:escola])
      redirect_to @escola, :notice  => "O registro foi atualizado com sucesso."
    else
      render :action => 'edit'
    end
  end

end
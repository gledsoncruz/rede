class MergulhadoresController < ApplicationController
  before_filter :authenticate_usuario!, :load
  
  def load
    @mergulhador = Mergulhador.new
    @escolas = Escola.find(:all)
  end
  
  def find
    @mergulhador = Mergulhador.find(current_usuario.cadastro_id)
  end

  def show
    find
  end

  def new
  end

  def create
    @mergulhador = Mergulhador.new(params[:mergulhador])
    if @mergulhador.save
      atualiza(@mergulhador.id, @mergulhador.class, current_usuario.id)
      redirect_to @mergulhador, :notice => "O registro foi inserido com sucesso."
    else
      render :action => 'new'
    end
  end

  def edit
    find
  end

  def update
    find
    if @mergulhador.update_attributes(params[:mergulhador])
      redirect_to @mergulhador, :notice  => "O registro foi atualizado com sucesso."
    else
      render :action => 'edit'
    end
  end

end

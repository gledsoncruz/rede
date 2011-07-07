class MergulhosController < ApplicationController
  before_filter :authenticate_usuario!, :load
  
  def load
    @mergulhos = Mergulho.where("mergulhador_id = #{current_usuario.cadastro_id}")
    @mergulho = Mergulho.new
    @mergulhador = Mergulhador.find(current_usuario.cadastro_id)
  end
  
  def find
    @mergulho = Mergulho.find(params[:id])
  end

  def index
    @json = Mergulho.all.to_gmaps4rails
  end

  def show
    find
  end

  def new
  end

  def edit
    find
  end

  def create
    @mergulho = Mergulho.new(params[:mergulho])
    if @mergulho.save
      redirect_to @mergulho, :notice => "O registro foi inserido com sucesso."
    else
      render :action => 'new'
    end 
  end

  def update
    find
    if @mergulho.update_attributes(params[:mergulho])
      redirect_to @mergulho, :notice  => "O registro foi atualizado com sucesso."
    else
      render :action => 'edit'
    end   
  end

  def destroy
    @mergulho = Mergulho.find(params[:id])
    @mergulho.destroy
    redirect_to(mergulhos_url)
  end
end

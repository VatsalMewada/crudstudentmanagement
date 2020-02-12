class InfoController < ApplicationController
  def index
    @info = Info.all
  end

  def new
    @info = Info.new
  end

  def show
    @info = Info.find(params[:id])
  end

  def edit
    @info = Info.find(params[:id])
  end

  def update
    @info = Info.find(params[:id])
    if(@info.update(info_params))
      redirect_to info_index_path
    end

  end

  def create
    @info = Info.new(info_params)
    if @info.save
      redirect_to info_index_path
    end
  end

  def destroy
    @info = Info.find(params[:id])
    @info.destroy
    redirect_to info_index_path
  end

  def info_params
    params.required(:info).permit(:name, :password, :address)
  end
end

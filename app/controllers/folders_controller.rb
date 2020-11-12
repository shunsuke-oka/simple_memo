class FoldersController < ApplicationController
  before_action :find_params, only: [:destroy]

  def index
    @folder = Folder.new
    @folders = Folder.all.order(id: "DESC")
  end

  def create
    @folder = Folder.new(folder_params)
    if @folder.save
      redirect_to root_path
    else
      render :index
    end
  end

  def destroy
    if current_user == @folder.user
      @folder.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def folder_params
    params.require(:folder).permit(:title).merge(user_id: current_user.id)
  end

  def find_params
    @folder = Folder.find(params[:id])
  end
end

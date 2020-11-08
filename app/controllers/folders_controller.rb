class FoldersController < ApplicationController
  def index
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(folder_params)
    if @folder.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def folder_params
    params.require(:folder).permit(:title).merge(user_id: current_user.id)
  end
end

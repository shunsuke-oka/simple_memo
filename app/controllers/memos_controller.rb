class MemosController < ApplicationController
  before_action :folder_all, only: [:index, :new, :show]
  before_action :find_params, only: [:destroy]

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @memo = Memo.find(params[:id])
  end

  def destroy
    @memo.destroy
    redirect_to root_path
  end

  private

  def memo_params
    params.require(:memo).permit(:title, :text).merge(folder_id: params[:folder_id])
  end

  def folder_all
    @folder = Folder.new
    @folders = Folder.all.order(id: "DESC")
  end

  def find_params
    @memo = Memo.find(params[:id])
  end
end



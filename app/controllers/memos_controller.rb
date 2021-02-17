class MemosController < ApplicationController
  before_action :folder_all, only: [:index, :new, :show, :edit, :update]
  before_action :find_params, only: [:destroy, :show, :edit, :update]
  before_action :authenticate_user!

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
  end

  def edit
  end

  def update
    if @memo.update(memo_params)
      render :show
    else
      render :edit
    end
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



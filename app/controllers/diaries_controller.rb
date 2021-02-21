class DiariesController < ApplicationController
  before_action :set_diary, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @diaries = Diary.includes(:user).order("created_at DESC")
  end

  def new
    @diary = Diary.new
  end

  def create
    Diary.create(diary_params)
  end

  def destroy
    diary = Diary.find(params[:id])
    diary.destroy
  end

  def edit
  end

  def update
    diary = Diary.find(params[:id])
    diary.update(diary_params)
  end

  def show
  end

  private

  def diary_params
    params.require(:diary).permit(:day, :breakfast_image, :lunch_image, :dinner_image, :snack_image, :weight, :exercise, :comment).merge(user_id: current_user.id)
  end

  def set_diary
    @diary = Diary.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end

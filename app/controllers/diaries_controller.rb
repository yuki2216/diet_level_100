class DiariesController < ApplicationController
  def index
    @diaries = Diary.all
  end

  def new
    @diary = Diary.new
  end

  def create
    Diary.create(diary_params)
  end

  def destroy
    
  end

  private

  def diary_params
    params.require(:diary).permit(:day, :breakfast_image, :lunch_image, :dinner_image, :snack_image, :weight, :exercise, :comment)
  end
end

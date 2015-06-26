class RecepiesController < ApplicationController

  def index
    @recepies = Recepy.all
  end

  def new
    @recepy = Recepy.new
  end

  def create
    @recepy = Recepy.new
    @recepy.assign_attributes permitted_recepy_params

    if @recepy.save
      flash[:success] = 'Success!'
    else
      flash[:error] = 'Failure!'
    end

    @recepies = Recepy.all
  end

  def edit
    @recepy = Recepy.find params[:id]
  end

  def update
    @recepy = Recepy.find params[:id]

    @recepy.assign_attributes permitted_recepy_params

    if @recepy.save
      flash[:success] = 'Success!'
    else
      flash[:error] = 'Failure!'
    end
  end

  def destroy
    @recepy = Recepy.find params[:id]

    if @recepy.destroy
      flash[:success] = 'Success!'
    else
      flash[:error] = 'Failure!'
    end

    @recepies = Recepy.all
  end

  private

  def permitted_recepy_params
    params.require(:recepy).permit(:title, :ingredients, :description)
  end
end
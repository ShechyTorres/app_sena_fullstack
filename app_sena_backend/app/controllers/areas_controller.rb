class AreasController < ApplicationController
  def index
    @areas = Area.all
  end

  def show
  end

  def new
    @area = Area.new
  end

  def create
    @area = Area.new(area_params)
      if @area.save
        redirect_to areas_path
      else
        render :new
      end
  end

  def edit
    @area = Area.find(params[:id])
  end

  def update
    @area = Area.find(params[:id])
      if @area.update(area_params)
        redirect_to areas_path
      else
        render :edit
      end
  end

  def delete
    @area = Area.find(params[:id])
    @area.destroy
    redirect_to areas_path
  end

  private
    def area_params
      params.require(:area).permit(:image_area, :title_area)
    end
  end

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
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

class Areas::ProgramasController < ApplicationController
  before_action :set_area
  def index
    @programas = @area.programas.all
  end

  def show
    @programas = @area.programa.find(:id)
  end

  def new
    @programa = @area.programas.new
  end

  def create
    @programa = area.programa.new(program_params)
    if 
    
    else
    
    end
  end
  

  private 
    def program_params
      params.require(:program).permit(:title_program, :area_id)
    end
    
    def set_area 
    @area = Area.find(params [:area_id])
    end 
end

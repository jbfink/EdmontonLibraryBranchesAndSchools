class BranchController < ApplicationController
  def index
    @mapbox_id = File.open("config/mapbox").read.strip
    @branches = Branch.all
    @schools = School.all
  end

  def show
    @branch = Branch.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @branch }
    end
  end
end

class BranchController < ApplicationController
  def index
    @mapbox_id = File.open("config/mapbox").read.strip
    @branches = Branch.all
    @schools = School.all
  end
end

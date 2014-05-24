class BranchController < ApplicationController
  def index
    @mapbox_id = File.open("config/mapbox").read.strip
  end
end

class BrainsController < ApplicationController
  include Errship::ActiveRecord::Rescuers
  
  def index
    raise ActiveRecord::RecordNotFound.new
  end
end

class BrainsController < ApplicationController
  include Errship3::ActiveRecord::Rescuers
  
  def index
    raise ActiveRecord::RecordNotFound.new
  end
end

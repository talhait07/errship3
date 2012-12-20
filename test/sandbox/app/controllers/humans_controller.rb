class HumansController < ApplicationController
  include Errship3::MongoMapper::Rescuers

  def index
    raise MongoMapper::DocumentNotFound.new
  end
end

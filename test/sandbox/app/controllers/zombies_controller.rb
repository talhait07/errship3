class ZombiesController < ApplicationController
  include Errship3::Mongoid::Rescuers

  def index
    raise Mongoid::Errors::DocumentNotFound.new(User, :id => 1)
  end
end

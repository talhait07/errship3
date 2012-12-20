require 'errship3'

class ApplicationController < ActionController::Base
  include Errship3::Rescuers
  protect_from_forgery

  def try_flashback
    self.flashback(params[:message])
  end
end

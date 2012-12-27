require 'rails/generators'
module Errship3
  class ViewGenerator < Rails::Generators::Base
    desc "Generator Your View To Customize"
    class_option :my_opt, :type => :boolean, :default => false, :desc => "My Option"

    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'templates')
    end

    def copy_initializer
      copy_file '../templates/standard.html.erb',
               'app/views/errship3/standard.html.erb'
    end
  end
end


require "rails/generators"

module Forml
  module Generators
  	class AssetsGenerator < Rails::Generators::NamedBase
      source_root File.expand_path("../templates", __FILE__)

      def copy_forml
        template "javascript.js.forml.erb", File.join('app/assets/javascripts', class_path, "#{file_name}.js.forml")
      end
    end
  end
end
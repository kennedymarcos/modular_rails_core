module Modularcore
	class InstallGenerator < Rails::Generators::Base
		source_root File.expand_path("../templates", __FILE__)
		desc "Install all folders and files do Modular Rails Core"
		def import_engines_core_files
			directory "engines", "engines"
		end

		def update_root_routes
			insert_into_file "config/routes.rb", "mount Global::Core::Engine => '/', as: 'global'\n", :after => "Rails.application.routes.draw do\n"
		end

		def update_gemfile_add_globalcore_gem
			insert_into_file "Gemfile", "#gem to load globalcore \n gem 'global_core', path: 'engines/core'\n", :after => "source 'https://rubygems.org'\n"
		end

	end
end

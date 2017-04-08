module Global
	module Core
	  class Engine < ::Rails::Engine
	    isolate_namespace Global
	  end
	end
end

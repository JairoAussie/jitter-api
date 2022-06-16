class ApplicationController < ActionController::API
    include Knock::Authenticable #all the controllers can use knock 
end

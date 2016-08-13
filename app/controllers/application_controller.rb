class ApplicationController < ActionController::API
  include ActionController::Serialization

  def preflight
    head 200
   end
end

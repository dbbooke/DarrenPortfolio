module SetSource 
	extend ActiveSupport::Concern

	included do |variable|
		before_action :set_source
	end

  def set_source
  	session[:source] = params[:q] if params[:q]
  end
end
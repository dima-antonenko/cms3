class SiteController < ApplicationController

  layout "site"

  before_action :static

  def static
  	@new_form_request = FormRequest.new()
  end

end
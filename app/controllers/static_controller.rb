class StaticController < ApplicationController
  skip_before_filter :authorize
  
  def index
  end

  def whipcare
  end

  def contact
  end
end

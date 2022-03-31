class ApplicationController < ActionController::Base
  before_action :set_time

  private

  def set_time
    @time = Time.now
  end
end

class ApplicationController < ActionController::Base
  def index
    render plain: 'Hello World!'
  end

  def humidity
    Measurment.create!(value: params[:value])
    render plain: :success
  end
end

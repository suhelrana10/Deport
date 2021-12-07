class AdminController < ApplicationController
  # layout 'admin'
  layout "admin", only: [:index]

  def index
    @total_orders = Order.all
  end
end

class Admin::DashboardController < ApplicationController
  def index
    this_year = Time.current.all_year
    @transactions_monthly_count = Transaction.where(paid_at: this_year).group_by_month(:paid_at, range: this_year, default_value: 0).count
    @transactions_this_year_count = Transaction.where(paid_at: this_year).count
    @total_views = Product.all.sum(&:views)
  end
end

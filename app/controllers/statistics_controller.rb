class StatisticsController < ApplicationController
  def index
    @history1 = Historyborrowtable.group(:borrowdate).count
    @history = Historyborrowtable.group(:borrowdate).count.to_json

  end
end

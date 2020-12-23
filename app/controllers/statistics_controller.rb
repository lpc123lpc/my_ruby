class StatisticsController < ApplicationController
  def index
    #@g = Historyborrowtable.group("DATE(created_at)").count.to_json
    @history = Historyborrowtable.group(:borrowdate).count.to_json
    @return = Historyborrowtable.group(:returndate).count.to_json
  end
end

class EmailStatsController < ApplicationController

  def index
    @total_sent = EmailStat.where(event:'send').count
    @total_open = EmailStat.where(event:'open').count
    @total_click = EmailStat.where(event:'click').count
  end
end

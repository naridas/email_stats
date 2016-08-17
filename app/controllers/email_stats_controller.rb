class EmailStatsController < ApplicationController

  include EmailStatsHelper

  def index
    @total = {
      send: event_total('send'),
      open: event_total('open'),
      click: event_total('click')
    }
    @open_rate = rates('open')
    @click_rate = rates('click')
  end
end

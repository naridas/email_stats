module EmailStatsHelper

  def event_total(event)
    EmailStat.where(event:event).count
  end

  def rates(event)
    {
      shipment: rate_percentage('Shipment', event),
      user_confirmation: rate_percentage('UserConfirmation', event),
      order: rate_percentage('Order', event),
      refer_friend: rate_percentage('ReferAFriend', event),
      book_discount: rate_percentage('GetABookDiscount', event)
    }
  end

  private

  def rate_percentage(type, event)
    type_total(type) == 0 ? 0.0 : calc_percentage(type, event)
  end

  def calc_percentage(type, event)
    (type_event_total(type, event)/type_total(type).to_f*100).round(2)
  end

  def type_total(type)
    EmailStat.where(email_type: type).count
  end

  def type_event_total(type, event)
    EmailStat.where(email_type: type, event: event).count
  end
end

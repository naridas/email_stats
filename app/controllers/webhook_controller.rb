class WebhookController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def receive
    if request.content_type =~ /json/ 
      data = JSON.parse(request.body.read)
      EmailStat.create(
              address: data['Address'],
              event: data['Event'],
              email_type: data['EmailType'],
              timestamp: data['Timestamp']
              )
    end
    render nothing: true
  end
end

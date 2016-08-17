feature 'email statistics' do
  let!(:email_stat) { FactoryGirl.create(:email_stat)}
  before do
    email_stat2 = FactoryGirl.create(:email_stat, address:'tom@lostmy.name',
                                      email_type:'UserConfirmation', event:'click',
                                      timestamp:1_432_820_702)

    email_stat3 = FactoryGirl.create(:email_stat, address:'vitor@lostmy.name',
                                      email_type:'Shipment', event:'open',
                                      timestamp:1_432_820_704)

    email_stat4 = FactoryGirl.create(:email_stat, address:'bob@lostmy.name',
                                      email_type:'Shipment', event:'open',
                                      timestamp:1_432_820_707)
  end

  scenario 'total number statistics' do
    visit '/'
    expect(page).to have_content('Total Number of Emails Sent: 1')
    expect(page).to have_content('Total Number of Emails Opened: 2')
    expect(page).to have_content('Total Number of Clicks: 1')
  end

  scenario 'calculates open rate for email types' do
    visit '/'
    expect(page).to have_content('Open Rate per Email Type Shipment: 66.67%')
  end

  scenario 'calculates click rate for email types' do
    visit '/'
    expect(page).to have_content('Click Rate per Email Type User Confirmation: 100.0%')
  end
end

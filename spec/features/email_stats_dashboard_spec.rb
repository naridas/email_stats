feature "email statistics" do
  let!(:email_stat) { FactoryGirl.create(:email_stat)}
  before do
    email_stat2 = FactoryGirl.create(:email_stat, address: "tom@lostmy.name",
                                      email_type: "UserConfirmation", event: "click",
                                      timestamp: 1432820702)

    email_stat3 = FactoryGirl.create(:email_stat, address: "vitor@lostmy.name",
                                      email_type: "Shipment", event: "open",
                                      timestamp: 1432820704)
  end

  scenario "total number statistics" do
    visit '/'
    expect(page).to have_content('Total Number of Emails Sent: 1')
    expect(page).to have_content('Total Number of Emails Opened: 1')
    expect(page).to have_content('Total Number of Clicks: 1')
  end
end

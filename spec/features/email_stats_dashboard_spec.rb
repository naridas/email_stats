feature "email statistics" do

  scenario "total number statistics" do
    visit '/'
    expect(page).to have_content('Total Number of Emails Sent: 0')
    expect(page).to have_content('Total Number of Emails Opened: 0')
    expect(page).to have_content('Total Number of Clicks: 0')
  end
end

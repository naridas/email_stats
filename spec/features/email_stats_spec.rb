feature 'email statistics' do

  before do
    email_ship_c = FactoryGirl.create(:email_stat, email_type:'Shipment', event:'click')
    email_ship_o = FactoryGirl.create(:email_stat, email_type:'Shipment', event:'open')
    email_order_c = FactoryGirl.create(:email_stat, email_type:'Order', event:'click')
    email_order_o = FactoryGirl.create(:email_stat, email_type:'Order', event:'open')
    email_friend_c = FactoryGirl.create(:email_stat, email_type:'ReferAFriend', event:'click')
    email_friend_o = FactoryGirl.create(:email_stat, email_type:'ReferAFriend', event:'open')
    email_user_c = FactoryGirl.create(:email_stat, email_type:'UserConfirmation', event:'click')
    email_user_o = FactoryGirl.create(:email_stat, email_type:'UserConfirmation', event:'open')
    email_book_c = FactoryGirl.create(:email_stat, email_type:'GetABookDiscount', event:'click')
    email_book_o = FactoryGirl.create(:email_stat, email_type:'GetABookDiscount', event:'open')
  end

  scenario 'total number statistics' do
    visit '/'
    expect(page).to have_content('Total Number of Emails Sent: 0')
    expect(page).to have_content('Total Number of Emails Opened: 5')
    expect(page).to have_content('Total Number of Clicks: 5')
  end

  scenario 'calculates open rate for email types' do
    visit '/'
    expect(page).to have_content('Open Rate per Email Type Shipment: 50.0%')
    expect(page).to have_content('Open Rate per Email Type Order: 50.0%')
    expect(page).to have_content('Open Rate per Email Type Refer a Friend: 50.0%')
    expect(page).to have_content('Open Rate per Email Type User Confirmation: 50.0%')
    expect(page).to have_content('Open Rate per Email Type Get a Book Discount: 50.0%')
  end

  scenario 'calculates click rate for email types' do
    visit '/'
    expect(page).to have_content('Click Rate per Email Type Shipment: 50.0%')
    expect(page).to have_content('Click Rate per Email Type Order: 50.0%')
    expect(page).to have_content('Click Rate per Email Type Refer a Friend: 50.0%')
    expect(page).to have_content('Click Rate per Email Type User Confirmation: 50.0%')
    expect(page).to have_content('Click Rate per Email Type Get a Book Discount: 50.0%')
  end
end

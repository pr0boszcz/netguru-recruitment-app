require 'spec_helper'

feature 'User edits payment page' do
  let (:student) { create :student, first_name: 'Jan', last_name: 'Nowak', birthdate: '1337-03-14' }
  let!(:payment) { create :payment, year: 2016, month: 4, paid_at: '2000-01-01', student: student }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit edit_payment_path(payment)
  end

  scenario do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Payments » Jan Nowak for 2016 April'
    end
    within('form') do
      fill_in 'Year', with: '1990'
      click_button 'Update Payment'
    end
    within('#payments-table') do
      expect(page).to have_content '1990 April'
    end
  end

end

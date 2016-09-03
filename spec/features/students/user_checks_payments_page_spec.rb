require 'spec_helper'

feature 'User checks payments page' do
  let!(:_student) { create :student, first_name: 'Antoni', last_name: 'Michalkiewicz', birthdate: '1347-03-14' }
  let (:student) { create :student, first_name: 'Jan', last_name: 'Nowak', birthdate: '1337-03-14' }
  let!(:payment) { create :payment, year: 2016, month: 4, paid_at: '2000-01-01', student: student }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit payments_path
  end

  scenario do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Payments'
    end
    within('#payments-table') do
      expect(page).to have_content '2016 April'
    end
  end

end

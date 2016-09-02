require 'spec_helper'

feature 'User checks subjects report' do
  let (:teacher)            { create :teacher, first_name: "Kazimierz", last_name: "Wielki"}
  let (:subject_item)       { create :subject_item, title: "Historyczne aspekty programowania", teacher: teacher }
  let (:student)            { create :student, first_name: 'Jan', last_name: 'Nowak', birthdate: '1337-03-14' }
  let!(:participant)        { create :participation, student: student, subject_item: subject_item }
  let!(:subject_item_note)  { create :subject_item_note, value: 3, student: student, subject_item: subject_item  }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit report_subjects_path
  end

  scenario do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Subjects'
    end
    within('.table') do
      expect(page).to have_content '1337-03_14'
    end
  end
end

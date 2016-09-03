require 'rails_helper'

RSpec.describe Payment, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :year }
    it { is_expected.to validate_presence_of :month }
    it { is_expected.to validate_presence_of :paid_at }
    it { is_expected.to validate_presence_of :student }
  end

  describe 'database columns' do
    it { should have_db_column :year }
    it { should have_db_column :month }
    it { should have_db_column :paid_at }
    it { should have_db_column :student_id }
  end

  describe 'associations' do
    it { is_expected.to belong_to :student }
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'If adding with similar params' do
    before do
      User.create!(email: "example@ex.ru", password: "12345678") if User.find_by(email: "example@ex.ru").nil?
    end
    it 'should return error if value isn`t unique' do
      expect { User.create!(email: "example@ex.ru",  password: "12345678") }.to raise_error(ActiveRecord::RecordInvalid)
    end

    context 'check existance' do
      it 'exists in database' do
        expect(User.find_by(email: "example@ex.ru").nil?).to eq(false)
      end
    end

    
    context 'check removed record' do
      user = User.find_by(email: "example@ex.ru")
      it 'removed from database' do
        expect(User.find_by(email: "example@ex.ru").nil?).to eq(false)
      end
    end

    context 'check default field' do
      user = User.find_by(email: "example@ex.ru")
      it 'equal to zero' do
        expect(User.find_by(email: "example@ex.ru").time_best).to eq(0.0)
      end
    end

    context 'check default field' do
      user = User.find_by(email: "example@ex.ru")
      it 'equal to zero' do
        expect(User.find_by(email: "example@ex.ru").statistics).to eq(0)
      end
    end
  end
end
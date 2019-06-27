require 'rails_helper'

RSpec.describe 'Update Merchant' do
  describe 'As a visitor' do
    describe 'When I visit the merchant show page' do
      it 'I can update a merchant' do
        merchant_1 = Merchant.create(name: "Thai Tanic", address: "12600 Feet Under the Sea", city: "North Atlantic Ocean", state: "SOS", zip: 1912)

        visit "/merchants/#{merchant_1.id}"

        click_link 'Update Merchant'

        expect(current_path).to eq("/merchants/#{merchant_1.id}/edit")

        #there is a form here

        fill_in 'Name', with: 'The Codfather'
        fill_in 'Address', with: 'Paramount Pictures Ave.'
        fill_in 'City', with: 'NY'
        fill_in 'State', with: 'NY'
        fill_in 'Zipcode', with: 1972

        click_on 'Update Merchant'

        expect(current_path).to eq("/merchants/#{merchant_1.id}")
      end
    end
  end
end

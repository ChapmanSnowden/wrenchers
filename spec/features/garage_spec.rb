require 'spec_helper'

describe 'Garage' do
	let(:user) { FactoryGirl.create :user }

	before do
		sign_in user
		visit root_path
	end

	it 'welcomes the user' do
		expect(page).to have_content 'Welcome to your Garage'	
	end

	context 'no bikes parked' do
		it 'invites user to park bike' do
			expect(page).to have_content 'Do you want to park your bike?'	
		end

		it 'allows user to park bike' do
			click_on 'park your bike'
			expect(page).to have_content 'What name do you call your bike?'
		end
	end

	context 'with parked bike' do
		let!(:ducati) { FactoryGirl.create :bike, name: 'Daisy', description: '2011 Ducati Monster 1100', owner_id: user.id }

		before { visit root_path }

		it 'displays portrait of bike' do
			expect(page).to have_content ducati.name
			#expect image src to match
		end

		it 'links to bike page' do
			click_on ducati.name
			expect(page).to have_content ducati.description
		end
	end
end

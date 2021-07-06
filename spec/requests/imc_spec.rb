require 'rails_helper'

describe 'IMC Api', type: :request do
	describe 'POST /imc' do
		it 'calculates a new imc' do
			expect {
				post '/imc', params: {imc: {height: '1.70', weight: '70'}}
			}.to change {Imc.count}.by(1)

			expect(response).to have_http_status(:created)
		end
	end
end


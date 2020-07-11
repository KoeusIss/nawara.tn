require 'rails_helper'

RSpec.describe 'Category API', type: :request do
  let!(:categories) {create_list(:category, 10)}
  let(:category_id) {categories.first.id}
  describe 'Get /categories' do
    before {get '/categories'}
    it 'returns categories' do
        expect(json).not_to be_empty
        expect(json.size).to eq(10)
    end
  end
end
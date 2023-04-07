require 'rails_helper'

describe UsdaFdcService do
  context 'instance methods' do
    context '#food_search' do
      it 'returns foods containing the ingredient passed' do
        food_data = UsdaFdcService.new.food_search('sweet potatoes')

      end
    end
  end
end
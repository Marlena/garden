require 'rails_helper'
require 'spec_helper'

RSpec.describe 'HomesRoutes', type: :routing do

  describe '#index' do
    it 'should route to crops#index' do
      expect(get('/homes/index')).to route_to('crops#index')
    end
  end

  describe 'homes' do
    it 'should route to crops#index' do
      expect(get('/homes')).to route_to('crops#index')
    end
  end

end

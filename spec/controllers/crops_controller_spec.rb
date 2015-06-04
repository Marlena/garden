require 'rails_helper'

describe CropsController, type: :controller do

  describe '#new' do

    it 'works' do
      get :new
      expect(response).to be_success
    end
  end

end
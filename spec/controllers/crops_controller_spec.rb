require 'rails_helper'

describe CropsController, type: :controller do

  describe '#new' do

    before(:each) do
      get :new
    end

    it 'works' do
      expect(response).to be_success
    end

    it 'builds a crop' do
      n = assigns[:crop]
      expect(n).to be_present
      expect(n).to be_a(Crop)
      expect(n).to be_new_record
    end


  end

end
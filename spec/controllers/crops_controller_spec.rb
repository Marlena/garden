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
      c = assigns[:crop]
      expect(c).to be_present
      expect(c).to be_a(Crop)
      expect(c).to be_new_record
    end
  end

  describe '#create' do

    describe 'when the crop is not valid' do^

      before do
        post :create, crop:{description: 'smells heavenly'}
      end

      it 'assigns the new crop' do
        expect(assigns[:crop]).to be_new_record
      end

      it 'redirects to new' do
        expect(response).to have_rendered(:new)
      end

    end

    describe 'when the crop is valid' do

      before do
        post :create, crop:{name: 'indian paintbrush', description: 'smells heavenly'}
      end

      it 'redirects to #show' do
        expect(assigns[:crop]).to be_new_record
        expect(response).to redirect_to assigns[:crop]
      end
    end

  end

  describe '#show' do

    let(:crop){
       Crop.create! name:'perilla', description:'minty fresh'
     }

    before do
      get :show, id:crop.id
    end

    it 'works' do
      expect(response).to be_success
    end

    it 'shows the crop' do
      n = assigns[:crop]
      expect(n).to be_present
      expect(n).to be_a(Crop)
    end

  end

  describe '#index' do
    let(:first_crop){ Crop.create! name:'one'}

    let(:second_crop){ Crop.create! name:'two'}

    before do
      get :index
    end

    it 'works' do
      expect(response).to be_success
    end

    it 'builds a list of crops' do
      c = assigns[:crops]
      expect(c).to eq([first_crop, second_crop])
    end
  end

end

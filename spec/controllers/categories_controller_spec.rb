require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  describe 'GET #index' do
    before {
      get :index
    }

    it { should respond_with(200) }
    it { should route(:get, '/categories').to(action: :index) }
    it { should render_template('index') }
  end
end

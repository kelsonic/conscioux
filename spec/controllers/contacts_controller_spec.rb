require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  describe 'GET #new' do
    before {
      get :new
    }

    it { should respond_with(200) }
    it { should route(:get, '/contact').to(action: :new) }
    it { should render_template('new') }
  end

  # Create Action
end

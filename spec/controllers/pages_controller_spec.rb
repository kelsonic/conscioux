require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'GET #home' do
    before {
      get :home
    }

    it { should respond_with(200) }
    it { should route(:get, '/').to(action: :home) }
    it { should render_template('home') }
  end

  describe 'GET #about' do
    before {
      get :about
    }

    it { should respond_with(200) }
    it { should route(:get, '/about').to(action: :about) }
    it { should render_template('about') }
  end

  describe 'GET #request_review' do
    before {
      get :request_review
    }

    it { should respond_with(200) }
    it { should route(:get, '/request-review').to(action: :request_review) }
    it { should render_template('request_review') }
  end
end

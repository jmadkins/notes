# frozen_string_literal: true

require 'rails_helper'

RSpec.describe NotebooksController, type: :controller do
  before { create_and_login_user }

  describe 'GET index' do
    it 'renders' do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end
end

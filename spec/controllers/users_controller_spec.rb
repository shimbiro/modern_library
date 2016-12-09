require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  it "assigns user" do

    get :new
    expect(assigns(:user)).to be_a_new(User)
  end
  it "creates new user" do
    post :create, user:  { email: 'mymail@gmail'}
    expect(User.count).not_to eq('before_count')
   expect(flash[:notice]) .to have_content("Account successfully created")
expect(response).to redirect_to(users_url)

  
  end
end

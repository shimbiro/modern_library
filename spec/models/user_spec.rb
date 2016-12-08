require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should not have a long name' do
    user = User.new
    user.username = 'a' * 51
    expect(user).not_to be_valid
  end
  it 'should have a unique email address' do
    #create a user with known email address
    user = User.new 
    user.email = "mymail@gmail.com"
    user.save
    # create a duplicate user
    duplicate_user= user.dup 
    # duplicate user should not be valid
    expect(duplicate_user).not_to be_valid
  end
end

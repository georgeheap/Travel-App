require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Bio' do

    before do
      @user = User.create(email: "test@test.com", password: "123456")
      @user.update(bio: "about me")
    end

    describe 'update biography' do
      before do
        @user.update(bio: "Let me tell you more about me")
      end
      it 'should allow a user to update their profile\'s biography' do
        expect(@user.bio).to eq "Let me tell you more about me"
      end
    end
  end
end

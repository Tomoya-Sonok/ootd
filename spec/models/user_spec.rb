require 'rails_helper'

describe User do
  describe '#create' do
    it "ニックネームがない場合は登録できないこと" do
      user = build(:user, username: nil)
      user.valid?
      expect(user.errors[:username]).to include("が入力されていません。")
    end
  
    it "Eメールがない場合は登録できないこと" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("が入力されていません。")
    end
  end
end
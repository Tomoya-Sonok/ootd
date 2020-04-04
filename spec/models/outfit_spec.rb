require 'rails_helper'

describe Outfit do
  describe '#create' do
    it "コーデ名がない場合は登録できないこと" do
      outfit = build(:outfit, name: nil)
      outfit.valid?
      expect(outfit.errors[:name]).to include("が入力されていません。")
    end
  
    it "コーデ写真がない場合は登録できないこと" do
      outfit = build(:outfit, image: nil)
      outfit.valid?
      expect(outfit.errors[:image]).to include("が入力されていません。")
    end
  end
end
require 'rails_helper'

describe Mood do
  describe '#create' do
    it "ムード名がない場合は登録できないこと" do
      mood = build(:mood, name: nil)
      mood.valid?
      expect(mood.errors[:name]).to include("が入力されていません。")
    end
  end
end
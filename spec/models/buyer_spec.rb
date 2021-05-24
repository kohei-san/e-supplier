require 'rails_helper'

RSpec.describe Buyer, type: :model do
  before do
    @buyer = FactoryBot.build(:buyer)
  end
  describe "バイヤー新規登録" do
    context "新規登録できる場合" do
      it "全てのカラムが入力されている" do
        expect(@buyer).to be_valid
      end
      it "profileが空でも登録できる" do
        @buyer.profile = ""
        expect(@buyer).to be_valid
      end
    end

    context "新規登録できない場合" do
      it "emailが空では登録できない" do
        @buyer.email = ""
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Email can't be blank")
      end
      it "emailに＠が含まれなければ登録できない" do
        @buyer.email = "testcom"
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Email is invalid")
      end
      it "emailが重複している場合は登録できない" do
        @buyer.save
        another_buyer = FactoryBot.build(:buyer)
        another_buyer.email = @buyer.email
        another_buyer.valid?
        expect(another_buyer.errors.full_messages).to include("Email has already been taken")
      end

      # it "は登録できない" do
      #   @buyer.company_name = ""
      #   @buyer.valid?
      #   expect(@buyer.errors.full_messages).to include("")
      # end
      # it "は登録できない" do
      #   @buyer.company_name = ""
      #   @buyer.valid?
      #   expect(@buyer.errors.full_messages).to include("")
      # end
      # it "は登録できない" do
      #   @buyer.company_name = ""
      #   @buyer.valid?
      #   expect(@buyer.errors.full_messages).to include("")
      # end
      # it "" do
      #   @buyer.company_name = ""
      #   @buyer.valid?
      #   expect(@buyer.errors.full_messages).to include("")
      # end
      it "factory_nameが空では登録できない" do
        @buyer.company_name = ""
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Company name can't be blank")
      end

    end

  end
end

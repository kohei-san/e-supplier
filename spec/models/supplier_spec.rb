require 'rails_helper'

RSpec.describe Supplier, type: :model do
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

      it "passwordが空では登録できない" do
        @buyer.password = ""
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Password can't be blank")
      end
      it "passwordが5文字以下では登録できない" do
        @buyer.password = "12345"
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
      it "password_confirmationがpasswordと違っては登録できない" do
        @buyer.password_confirmation = @buyer.password + "a"
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it "company_nameが空では登録できない" do
        @buyer.company_name = ""
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Company name can't be blank")
      end
      it "company_nameが重複していると登録できない" do
        @buyer.save
        another_buyer = FactoryBot.build(:buyer)
        another_buyer.company_name = @buyer.company_name
        another_buyer.valid?
        expect(another_buyer.errors.full_messages).to include("Company name has already been taken")
      end
      it "company_name_kanaがカタカナ以外では登録できない" do
        @buyer.company_name_kana = "ああああ"
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Company name kana is invalid")
      end
      it "company_name_kanaがカタカナ以外では登録できない" do
        @buyer.company_name_kana = "ああああ"
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Company name kana is invalid")
      end

      it "last_nameが空では登録できない" do
        @buyer.last_name = ""
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Last name can't be blank")
      end
      it "last_name_kanaが空では登録できない" do
        @buyer.last_name_kana = ""
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Last name kana can't be blank")
      end
      it "Last_name_kanaがカタカナ以外では登録できない" do
        @buyer.last_name_kana = "ああああ"
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Last name kana is invalid")
      end

      it "first_nameが空では登録できない" do
        @buyer.first_name = ""
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("First name can't be blank")
      end
      it "first_name_kanaが空では登録できない" do
        @buyer.first_name_kana = ""
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("First name kana can't be blank")
      end
      it "first_name_kanaがカタカナ以外では登録できない" do
        @buyer.first_name_kana = "ああああ"
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("First name kana is invalid")
      end

      it "phone_numberが空では登録できない" do
        @buyer.phone_number = ""
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Phone number can't be blank")
      end
      it "phone_numberが全角数字では登録できない" do
        @buyer.phone_number = "０１２３４５６７８９"
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Phone number is not a number")
      end
      it "phone_numberが11文字以上では登録できない" do
        @buyer.phone_number = "123456789012"
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Phone number is too long (maximum is 11 characters)")
      end
      it "phone_numberに-が含まれていると登録できない" do
        @buyer.phone_number = "090-1234-5678"
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Phone number is not a number")
      end

      it "prefecture_idが空では登録できない" do
        @buyer.prefecture_id = ""
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Prefecture can't be blank")
      end
      it "profileが1000文字以上では登録できない" do
        @buyer.profile = "a" * 1001
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Profile is too long (maximum is 1000 characters)")
      end
    end
  end
end

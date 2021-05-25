require 'rails_helper'

RSpec.describe Supplier, type: :model do
  before do
    @supplier = FactoryBot.build(:supplier)
  end
  describe "バイヤー新規登録" do
    # 正常系
    context "新規登録できる場合" do
      it "全てのカラムが入力されている" do
        expect(@supplier).to be_valid
      end
      it "profileが空でも登録できる" do
        @supplier.profile = ""
        expect(@supplier).to be_valid
      end
    end

    # 異常系
    context "新規登録できない場合" do
      it "emailが空では登録できない" do
        @supplier.email = ""
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Email can't be blank")
      end
      it "emailに＠が含まれなければ登録できない" do
        @supplier.email = "testcom"
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Email is invalid")
      end
      it "emailが重複している場合は登録できない" do
        @supplier.save
        another_supplier = FactoryBot.build(:supplier)
        another_supplier.email = @supplier.email
        another_supplier.valid?
        expect(another_supplier.errors.full_messages).to include("Email has already been taken")
      end

      it "passwordが空では登録できない" do
        @supplier.password = ""
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Password can't be blank")
      end
      it "passwordが5文字以下では登録できない" do
        @supplier.password = "12345"
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
      it "password_confirmationがpasswordと違っては登録できない" do
        @supplier.password_confirmation = @supplier.password + "a"
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it "company_nameが空では登録できない" do
        @supplier.company_name = ""
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Company name can't be blank")
      end
      it "company_nameが重複していると登録できない" do
        @supplier.save
        another_supplier = FactoryBot.build(:supplier)
        another_supplier.company_name = @supplier.company_name
        another_supplier.valid?
        expect(another_supplier.errors.full_messages).to include("Company name has already been taken")
      end
      it "company_name_kanaがカタカナ以外では登録できない" do
        @supplier.company_name_kana = "ああああ"
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Company name kana is invalid")
      end
      it "company_name_kanaがカタカナ以外では登録できない" do
        @supplier.company_name_kana = "ああああ"
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Company name kana is invalid")
      end

      it "last_nameが空では登録できない" do
        @supplier.last_name = ""
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Last name can't be blank")
      end
      it "last_name_kanaが空では登録できない" do
        @supplier.last_name_kana = ""
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Last name kana can't be blank")
      end
      it "Last_name_kanaがカタカナ以外では登録できない" do
        @supplier.last_name_kana = "ああああ"
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Last name kana is invalid")
      end

      it "first_nameが空では登録できない" do
        @supplier.first_name = ""
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("First name can't be blank")
      end
      it "first_name_kanaが空では登録できない" do
        @supplier.first_name_kana = ""
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("First name kana can't be blank")
      end
      it "first_name_kanaがカタカナ以外では登録できない" do
        @supplier.first_name_kana = "ああああ"
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("First name kana is invalid")
      end

      it "phone_numberが空では登録できない" do
        @supplier.phone_number = ""
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Phone number can't be blank")
      end
      it "phone_numberが全角数字では登録できない" do
        @supplier.phone_number = "０１２３４５６７８９"
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Phone number is not a number")
      end
      it "phone_numberが11文字以上では登録できない" do
        @supplier.phone_number = "123456789012"
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Phone number is too long (maximum is 11 characters)")
      end
      it "phone_numberに-が含まれていると登録できない" do
        @supplier.phone_number = "090-1234-5678"
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Phone number is not a number")
      end

      it "prefecture_idが空では登録できない" do
        @supplier.prefecture_id = ""
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Prefecture can't be blank")
      end
      it "profileが1000文字以上では登録できない" do
        @supplier.profile = "a" * 1001
        @supplier.valid?
        expect(@supplier.errors.full_messages).to include("Profile is too long (maximum is 1000 characters)")
      end
    end
  end
end

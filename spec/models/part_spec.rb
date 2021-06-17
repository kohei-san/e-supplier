require 'rails_helper'

RSpec.describe Part, type: :model do
  before do
    @part = FactoryBot.build(:part)
  end
  describe "part出品機能" do
    # 正常系
    context "partが出品できる場合" do
      it "全ての項目が入力されていれば登録できる" do
        expect(@part).to be_valid
      end
      it "nameが50文字以内であれば登録できる" do
        @part.name = "a" * 50
        expect(@part).to be_valid
      end
      it "infoが1000文字以内なら登録できる" do
        @part.info = "a" * 1000
        expect(@part).to be_valid
      end
      it "写真がなくても登録できる" do
        @part.image = ""
        expect(@part).to be_valid
      end
    end
    # 異常系
    context "partsが出品できない場合" do
      it "nameが空では登録できない" do
        @part.name = ""
        @part.valid?
        expect(@part.errors.full_messages).to include("Name can't be blank")
      end
      it "nameが51文字以上では登録できない" do
        @part.name = "a" * 51
        @part.valid?
        expect(@part.errors.full_messages).to include("Name is too long (maximum is 50 characters)")
      end

      it "infoが空では登録できない" do
        @part.info = ""
        @part.valid?
        expect(@part.errors.full_messages).to include("Info can't be blank")
      end
      it "infoが1001文字以上では登録できない" do
        @part.info = "a" * 1001
        @part.valid?
        expect(@part.errors.full_messages).to include("Info is too long (maximum is 1000 characters)")
      end

      it "material_idが空では登録できない" do
        @part.material_id = ""
        @part.valid?
        expect(@part.errors.full_messages).to include("Material can't be blank")
      end
      it "material_idを選択しなければ登録できない" do
        @part.material_id = "0"
        @part.valid?
        expect(@part.errors.full_messages).to include("Material must be other than 0")
      end

      it "processing_idが空では登録できない" do
        @part.processing_id = ""
        @part.valid?
        expect(@part.errors.full_messages).to include("Processing can't be blank")
      end
      it "processing_idを選択しなければ登録できない" do
        @part.processing_id = "0"
        @part.valid?
        expect(@part.errors.full_messages).to include("Processing must be other than 0")
      end

      it "deadline_idが空では登録できない" do
        @part.deadline_id = ""
        @part.valid?
        expect(@part.errors.full_messages).to include("Deadline can't be blank")
      end
      it "deadline_idを選択しなければ登録できない" do
        @part.deadline_id = "0"
        @part.valid?
        expect(@part.errors.full_messages).to include("Deadline must be other than 0")
      end

      it "buyerに紐づいていなければ登録できない" do
        @part.buyer = nil
        @part.valid?
        expect(@part.errors.full_messages).to include("Buyer must exist")
      end
    end
  end
end

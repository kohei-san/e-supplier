require 'rails_helper'

RSpec.describe PartsController, type: :request do
  before do
    @part = FactoryBot.build(:part)
    @part.image = fixture_file_upload("./app/assets/images/test_1.jpeg")
    @part.save
  end

  describe "GET #index" do
    it "indexアクションにリクエストすると、正常にレスポンスが返ってくる" do
      get root_path
      expect(response).to have_http_status(200)
    end
    it "indexアクションにリクエストすると、レスポンスにpartのnameが表示されている" do
      get root_path
      expect(response.body).to include(@part.name)
    end
    it "indexアクションにリクエストすると、レスポンスに添付した画像が存在する" do
      get root_path
      expect(response.body).to include("test_1.jpeg")
    end
    it "indexアクションにリクエストすると、レスポンスに画像詳細へのurlが存在する" do
      get root_path
      expect(response.body).to include(part_path(@part.id))
    end


  end
end

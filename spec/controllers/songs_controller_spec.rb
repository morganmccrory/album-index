require 'rails_helper'

describe SongsController do

  describe "GET #index" do
    it "assigns @songs" do
      song = Song.create
      get :index
      expect(assigns(:songs)).to eq([song])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end

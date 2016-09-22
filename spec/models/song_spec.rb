require "rails_helper"

describe Song, :type => :model do
  before(:each) do
    Song.create!({title: "Red", artist: "Taylor Swift", album: "Red"})
    Song.create!({title: "22", artist: "Taylor Swift", album: "Red"})
    Song.create!({title: "My Way", artist: "Calvin Harris", album: "My Way - Single"})
  end

  describe "#search" do
    it "returns all songs if no params are given" do
      expect(Song.search("", "", "")).to have_exactly(3).items
    end

    it "returns selected songs if one param is given" do
      expect(Song.search("", "Taylor Swift", "")).to have_exactly(2).items
    end

    it "returns selected songs if multiple params are given" do
      expect(Song.search("Red", "Taylor Swift", "")).to have_exactly(1).items
    end
  end
end
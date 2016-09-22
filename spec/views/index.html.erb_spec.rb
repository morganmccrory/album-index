require "rails_helper"
require "will_paginate/array"

describe "songs/index" do
  it "displays all the songs" do
    @songs = [
      Song.create!({title: "22", artist: "Taylor Swift", album: "Red"}),
      Song.create!({title: "My Way", artist: "Calvin Harris", album: "My Way - Single"})
    ]
    @songs = @songs.paginate(:page => 1, :per_page => 2)

    render

    expect(rendered).to match /22/
    expect(rendered).to match /My Way/
  end
end
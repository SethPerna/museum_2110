require './lib/museum'
require './lib/exhibit'
require './lib/patron'
RSpec.describe Museum do
  it "exists" do
    dmns = Museum.new("Denver Museum of Nature and Science")

    expect(dmns).to be_an_instance_of(Museum)
    expect(dmns.name).to eq("Denver Museum of Nature and Science")
    expect(dmns.exhibits).to eq([])
  end

  it "#add_exhibit" do
    dmns = Museum.new("Denver Museum of Nature and Science")
    gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    imax = Exhibit.new({name: "IMAX",cost: 15})
    dmns.add_exhibit(gems_and_minerals)
    dmns.add_exhibit(dead_sea_scrolls)
    dmns.add_exhibit(imax)
    #require "pry"; binding.pry
    expect(dmns.exhibits).to eq([gems_and_minerals, dead_sea_scrolls, imax])
  end
end
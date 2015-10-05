require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
  end

  describe "#attack!" do
    it "should deal 100 (twice the AP) damage to the enemy barracks" do
      enemy_barracks = Barracks.new
      expect(enemy_barracks).to receive(:damage).with(100)
      @siege_engine.attack!(enemy_barracks)
    end

    it "should deal 50 (AP) damage to the enemy siege engine" do
      enemy_siege_engine = SiegeEngine.new
      expect(enemy_siege_engine).to receive(:damage).with(50)
      @siege_engine.attack!(enemy_siege_engine)
    end

    it "should not damage an enemy Footman" do
      footman = Footman.new
      expect(@siege_engine.attack!(footman)).to be nil
    end

    it "should not damage an enemy Peasant" do
      peasant = Peasant.new
      expect(@siege_engine.attack!(peasant)).to be nil
    end
  end

end
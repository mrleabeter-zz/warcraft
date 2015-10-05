require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end
  
  describe "#train_siege_engine" do
    it "costs 200 gold to train a siege engine" do
      @barracks.train_siege_engine
      expect(@barracks.gold).to eq(800)
    end

    it "costs 3 food to train a siege engine" do
      @barracks.train_siege_engine
      expect(@barracks.food).to eq(77)
    end

    it "costs 60 lumber to train a siege engine" do
      @barracks.train_siege_engine
      expect(@barracks.lumber).to eq(440)
    end

    it "creates an instance of siege engine" do
      siege_engine = @barracks.train_siege_engine
      expect(siege_engine).to be_an_instance_of(SiegeEngine)
    end
  end

  describe "#can_train_siege_engine?" do
    it "true" do
      expect(@barracks.can_train_siege_engine?).to be true
    end

    it "false" do
      expect(@barracks).to receive(:lumber).and_return(50)
      expect(@barracks.can_train_siege_engine?).to be false
    end
  end

end
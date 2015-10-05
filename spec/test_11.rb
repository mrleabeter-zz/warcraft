require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
  end

  it "should be a Unit" do
    expect(@siege_engine).to be_an_instance_of(SiegeEngine)
    expect(@siege_engine).to be_a(Unit)
  end

  it "should have 400 health points" do
    expect(@siege_engine.health_points).to eq(400)
  end
  
  it "should have 50 attack power" do
    expect(@siege_engine.attack_power).to eq(50)
  end

end
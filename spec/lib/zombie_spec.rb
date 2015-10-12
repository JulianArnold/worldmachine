require "spec_helper"
require "zombie"

describe Zombie do
  it "is rotten!" do
    zombie = Zombie.new
    zombie.rotting.should == true
  end
end




# a modifier is the ".should" bit
# a matcher is the "<" operator bit
module DemoModule
  class DemoClass
    def self.introduce
      return 2 # TODO: choose return between 1, 2, 3
    end

    def introduce
      return 3 # TODO: choose return between 1, 2, 3
    end
  end

  def self.introduce
    return 1
    # TODO: choose return between 1, 2, 3
  end
end

def tierce?
  first = DemoModule.introduce
  second = DemoModule::DemoClass.introduce
  third = DemoModule::DemoClass.new.introduce
  [first, second, third] == [1, 2, 3]
end
class Bear

  attr_reader :name, :type

  def initialize (name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_contents
    @stomach.length
  end

  # def add_to_stomach(food)
  #   @stomach.push(food)
  # end
  # Why did this not work?

  def takes_fish_from_river(river, fish)
    for instance in river.fish
      if instance == fish
        @stomach.push(fish) && river.remove_fish(fish)
        # Why did this work?
      end
    end
  end

end

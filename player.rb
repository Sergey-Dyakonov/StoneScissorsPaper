class Player
  @@move_variants = [:scissors, :stone, :paper]

  public def move()
    @@move_variants[rand(0..2)]
  end

  public def self.move_variants
    @@move_variants
  end
end

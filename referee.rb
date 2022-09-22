class Referee
  public def judge(move_1, move_2)
    move_1 = move_1.to_sym
    if Player.move_variants.include? move_1
      basic = move_1.to_s + " vs " + move_2.to_s + " --> "
      if move_1 == move_2
        basic + "tie"
      elsif is_win(move_1, move_2)
        basic + "win"
      else
        basic + "loose"
      end
    else
      "error"
    end
  end

  private def is_win(move_1, move_2)
    (move_1 == :scissors && move_2 == :paper) ||
      (move_1 == :paper && move_2 == :stone) ||
      (move_1 == :stone && move_2 == :scissors)
  end
end
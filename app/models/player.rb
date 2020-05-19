class Player < ApplicationRecord
  def fullname
    "#{first_name} #{last_name}"
  end

  def debut_friendly
    debut.strftime("%m-%d-%Y") unless debut.nil?
  end

  def final_friendly
    final_game.strftime("%m-%d-%Y") unless final_game.nil?
  end

  def height_ft
    if height == nil
      return ""
    else
      feet = height / 12
      inches = height % 12
      return "#{feet}'#{inches}"
    end
  end
end

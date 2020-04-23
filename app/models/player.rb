class Player < ApplicationRecord
  def fullname
    "#{first_name} #{last_name}"
  end
end

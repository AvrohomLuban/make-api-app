class Company < ApplicationRecord
  def allabout
    "Company name is #{name}. We rock at #{bs}. Come to us and count on #{buzzword}"
  end

end

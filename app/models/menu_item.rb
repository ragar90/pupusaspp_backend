class MenuItem < ApplicationRecord
  belongs_to :menu

  def available?
    if stock < 0
      available
    else
      stock > 0
    end
  end
  
end

module MiniActiveRecord
  class Model

    def all
      #...
    end
   def where
      #...
    end
  end

end

class Chef < MiniActiveRecord::Model
  # Esta clase parece vacía pero esta heredando toda la funcionalidad de ActiveRecord
end

class Meal < MiniActiveRecord::Model
  # Esta clase parece vacía pero esta heredando toda la funcionalidad de ActiveRecord
end
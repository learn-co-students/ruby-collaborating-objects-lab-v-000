require 'pry'
class Song
  def name #getter method cRud
    @name
  end
  def name=(name) #setter method, Crud
    @name=name
  end
  def initialize(name)
    @name = name
    #binding.pry
  end
end

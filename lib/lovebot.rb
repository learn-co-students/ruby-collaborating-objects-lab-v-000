module Lovebot
  module Classmethods
  end

  module Instancemethods
  end

  def save
    self.all << self
  end
  def self.all
    seall
  end
  def reset_all
    self.all.clear
  end
  def find_by_name(name)
    self.detect{|artist| artist.name == name}
  end
  def count
    self.all.size
  end
end

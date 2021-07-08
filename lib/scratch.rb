def self.create_by_name(name)
    newsong = self.create
    newsong.name = name
    newsong
  end

  def self.find_by_name(name)
    self.all.detect { |songs| songs.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

class Song
  attr_accessor :name, :file_name
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(file_name)
    song = self.new(file_name)
    song
  end
end

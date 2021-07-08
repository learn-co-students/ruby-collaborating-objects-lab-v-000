require 'pry'

class MP3Importer
  def initialize(path)
    @@path = path
    self.files
  end
  @@files = []
  def path
    @@path
  end

  def files
    @@files = Dir.entries(path).delete_if {|file| file.length < 5}
  end

  def import
    @@files.each {|file_name| Song.new_by_filename(file_name)}
  end
  end
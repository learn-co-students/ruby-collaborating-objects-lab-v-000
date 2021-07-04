require 'pry'

class MP3Importer
  attr_accessor :path, :songs

  @@songs = []

  def initialize(path)
    self.path = path
  end

  def files
    files_array = Dir.glob("#{path}/*.mp3")
    files_array.each do |file|
      file.gsub!("./spec/fixtures/mp3s/", "")
    end
  end


  def import
    self.files.each { |filename| @@songs << Song.new_by_filename(filename)}
  end

end


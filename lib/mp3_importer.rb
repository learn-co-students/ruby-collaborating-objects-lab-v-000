require 'pry'
class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{self.path}/*mp3") #sets files array equal to the files with mp3
    @files = @files.collect{|x| x.gsub("#{path}/", "")} #removes the path from the files so it returns just the artist/song info
    # binding.pry
  end

  def import
    files.each do |filename| #goes through the file array and creates new songs based on the filenames
      Song.new_by_filename(filename)
    end
  end

end

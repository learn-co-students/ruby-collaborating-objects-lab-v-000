require 'pry'
class MP3Importer
attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def files
    @list_of_files = Dir.glob("#{self.path}/*.mp3")
    @list_of_files.collect do |filename|
      filename.split("#{self.path}/")[1]
    end
  end

  # def files
  #   @files ||= Dir.glob("#{path}/*.mp3").collect do
  #   |f| f.gsub("#{path}/", "")
  #   binding.pry
  # end
  # end

  def import
    self.files.each do |some_filename|
      Song.new_by_filename(some_filename)
      #binding.pry
    end
  end


end

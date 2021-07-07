require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path=path
  end

  def files
    @files= Dir.glob("#{@path}/*.mp3")
    @files.map {|file| file.gsub("#{@path}/","")}

  end
  def import

    self.files
    self.files.each do |file|
      Song.new_by_filename(file)

    end
  end
  # def import(list_of_filenames)
  #   list_of_filenames.each do |filename|
  #     Song.new_by_filename(filename)
  #   end
  # end

end

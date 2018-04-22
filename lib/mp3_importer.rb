require 'pry'
class MP3Importer
  attr_accessor :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def path
    @filepath
  end

  def files
    @files = []
    Dir["#{@filepath}/*"].each do |file|
      file_name = file.split("mp3s/")[1]
      @files << file_name
    end
    @files
  end

  def import
    filenames = self.files
    filenames.each {|file| Song.new_by_filename(file)}
    #binding.pry
  end

end

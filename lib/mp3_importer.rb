require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path=path

  end

  def files
    files=[]
    Dir.entries(path).each do |file|
      if file.split(".")[1]=="mp3"
        files<<file.split(/\bw+[.]/)[0]
      end
    end
    files
  end

  def import
    my_files=self.files

    my_files.each do |filename|
      song=Song.new_by_filename(filename)
    end
  end



end

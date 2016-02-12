class MP3Importer
  attr_accessor :path, :files
  
  def initialize(music_path)
    @path=music_path
    @files=[]
   end

  def files
    Dir.foreach(path) do |file|
      if file.match(/.mp3\z/)
          @files<< file
      end
    end
    @files
  end

  def import
    self.files.each do |file|
     Song.new_by_filename(file)
    end
  end
end


 
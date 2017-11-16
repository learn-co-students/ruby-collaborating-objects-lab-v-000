class MP3Importer
  attr_accessor :files, :path

  def initialize(path)
    @files=[]
    @path=path
  end

  def files
    mp3s=@path+"/*.mp3"
    #puts mp3s
    Dir.glob(mp3s) do |item|
      #next if item == '.' or item == '..'
        # do work on real items
        filename=item.split(@path)[1].split("/")[1]
        @files<<filename
        #puts filename
      end
      @files
  end


  def import
    puts "Import! #{@files.size}"
    #Song.new(filename)
    self.files.each do |file|
      Song.new_by_filename(file)
      puts file
    end
  end

end

class MP3Importer
  attr_accessor :path, :list_of_filenames, :name

  def initialize(path)
    @path = path
    @list_of_filenames = []
  end

  # def import
  #   self.files.each {|filename| Song.new_by_filename(filename)}
  #   binding.pry
  # end



  def files

    @list_of_filenames = Dir.entries(@path).select{|file| file.include?('.mp3')}

  end

  def import

     Dir.entries(@path).select{|file| file.include?('.mp3')}.uniq.each do |filename|

       song = Song.new_by_filename(filename)

     end


    #    artist_name = filename.split(" - ")[0]
     #
    #    Artist.find_or_create_by_name(artist_name)
    #    song = filename.split(" - ")[1]
    #    Artist.add_song(song)
    #  end
   end

end

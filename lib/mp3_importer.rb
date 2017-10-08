require "pry"
class MP3Importer

  attr_accessor :path, :music_files

  def initialize(path)
    @path = path
    @music_files = []
  end

  def files
    #file = Dir.entries(path)
    #file = Dir.glob("#{@path}/*.mp3")
    @music_files = Dir.glob("#{self.path}/*mp3") #sets files array to equal the files with mo3
    @music_files = @music_files.collect{|x| x.gsub("#{path}/", "")}
    #file.map {|music_file| music_file.gsub(path+"/", "")}
  end

  def import
    # binding.pry
    files.each {|song| Song.new_by_filename(song) }


    #binding.pry
    # song <- why this line?
  end

end



    # @music_files.each do |music_file|
    #      music_file.split(" - ")[2] = artist_name
    #      Artist.find_or_create_by_name(artist_name)
    #      music_file.split(" - ")[1] = song
    #      Artist.add_song(song)
    #      @music_files.size
      #  end

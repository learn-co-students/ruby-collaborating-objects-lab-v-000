'require pry'
class MP3Importer
    
    attr_accessor :path
    
    def initialize(path)
        @path = path
    end
    
    def files
        Dir.chdir("#{@path}") {| path | Dir.glob("*.mp3")}  
    end
    
    def import
        x = self.files
        x.each do |y|
            rows = y.split(/[-.]/)
            song_name = rows[1].strip
            artist = rows[0].strip
       
            song = Song.new(song_name)
            song.artist = Artist.find_or_create_by_name(artist)
            song.artist.add_song(song)
            binding.pry
        end
    end
    
end

# require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    self.path = path
    self.files = []
  end

  def files
    song_array = []
    file_array = Dir["#{@path}/*.mp3"]
    #=>returns an array in format ["db/mp3s/Battles - Ice Cream (Feat. Matias Aguayo) - rock.mp3", "anotherfilename", ... ]
    file_array.each do |song_file|
      song_array << song_file.split(/\//)[-1]
    end
    @files = song_array
  end

  #RACHEL what appears to be the problem is that after the importer.files is called, files is still an empty array, which obviously it

  def import
    self.files.each { |file| Song.new_by_filename(file) }
  end

end
#
# hat = MP3Importer.new("./lib/testfiles")
#
# hat.import

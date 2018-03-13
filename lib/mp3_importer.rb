class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
    @files=[]
  end

  def files
    entries = Dir.entries(@path)

    mp3_files=[]
    entries.each do |entry|
      mp3_files << entry if entry.match(/.mp3/)
    end
    @files = mp3_files.select{|entry| entry.delete(@path)}
    @files
  end

  def import
    self.files.each do |filename|
      song = Song.new_by_filename(filename)
      song.artist.save
    end
    Artist.remove_duplicates
    puts Artist.all.to_s
  end


end
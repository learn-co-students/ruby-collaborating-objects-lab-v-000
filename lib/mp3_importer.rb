class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @@files = Dir.entries(path)
    @@files.delete_if {|e| e == "." || e == ".."}
  end


  def files
    @@files.collect do |e|
      e.slice!("./spec/fixtures/mp3s/")
    end

    @@files
  end

  def import

    @@files.each {|file| Song.new_by_filename(file)}
  end

end

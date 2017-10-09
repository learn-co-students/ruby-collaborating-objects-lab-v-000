class MP3Importer

  attr_accessor :path, :list

  def initialize(path)
    @path = path
    @list =[]
  end

  def files
    @list = Dir["#{@path}/*.mp3"]
    @list.each do |file|
      file.slice!("#{@path}/")
    end
    @list
  end

  def import
     files
     @list.each {|name| Song.new_by_filename(name)}
  end
end


class MP3Importer

@array = []

attr_reader :path

  def initialize(path)
    @path = path
  end

  def files(file)
    @array << file
  end



end

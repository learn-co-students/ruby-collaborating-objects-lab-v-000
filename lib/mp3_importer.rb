class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = remove_path_prefixes(Dir[path + "/*"])
  end

  def remove_path_prefixes(files)
    files.collect {|file| File.basename(file)}
  end

  def music_importer
  end

end

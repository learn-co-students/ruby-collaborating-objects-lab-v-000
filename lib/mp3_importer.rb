require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{self.path}/*.mp3").map do |file|
      file.gsub(/"#{self.path}"/, "")
    end
  end

  def self.import
  end
end

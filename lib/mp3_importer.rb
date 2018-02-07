require 'pry'

class MP3Importer
  attr_accessor :path, :filenames

  @@filenames = []

    def initialize(path)
      @path = path
    end

    def files
      Dir.entries(path).each do |filename|
        @@filenames << filename
      end
      @@filenames.reject! do |filename|
        filename == "." || filename == ".."
      end
    end

    def self.filenames
      @@filenames
    end

    def import
      @@filenames.uniq.each do |filename|
        Song.new_by_filename(filename)
      end
    end

  end

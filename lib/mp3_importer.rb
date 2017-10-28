require 'pry'
require_relative 'artist.rb'
require_relative 'song.rb'
class MP3Importer

    attr_reader :path

    def initialize(file_path)
        @path = file_path
    end

    def files
        @mp3_files = Dir["#{@path}/*.mp3"]
        @mp3_files.collect {|file| File.basename file}

    end

    def import
        self.files.each {|file| Song.new_by_filename(file)}
      #  binding.pry
      #  puts self.files
    end

   #   test_music_path = "./spec/fixtures/mp3s"
   #   music_importer = MP3Importer.new(test_music_path)
    #  music_importer.import
end
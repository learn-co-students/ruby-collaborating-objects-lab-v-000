require 'pry'

class Artist

      attr_accessor :name, :songs
      @@all = []

      def initialize(name)
             @name = name
             @songs =[]

      end

      def add_song(song)
            @songs << song
      end

      def save
            @@all << self
            self
      end

      def self.all
             @@all
      end

      def self.create_by_name(name)
            artist = Artist.new(name)
            artist.save
            artist
      end

      def self.find_by_name(string)
             @@all.find do |name_of|
                  name_of.name == string
            end
      end

      def self.find_or_create_by_name(name)
            self.find_by_name(name) || self.create_by_name(name)
      end

      def print_songs
             self.songs.each{|song_name| puts song_name.name}
      end
end

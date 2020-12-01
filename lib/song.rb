class Song
    attr_accessor :name, :artist 

    @@all = []
  
    def initialize(name, artist = @artist)
        @name = name
        @artist = artist
        @@all
    end

    def self.all
        @@all
    end 

    def self.destroy_all
        @@all = []
    end
    
    def save
        @@all << self
    end

    def self.create(name)
        song = Song.new(name)
        song.save 
        return song 
    end 
end

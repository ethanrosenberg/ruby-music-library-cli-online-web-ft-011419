class Song
  attr_accessor :name
  
   @@all = []
  def initialize(name, artist = nil, genre = nil)
    @name = name
    if artist != nil
      self.artist = artist
    end
    if genre != nil
     self.genre = genre
    end
    
    #if artist != nil
      
    #self.send("artist=", artist) 
  end
  
  def self.all
    @@all
  end
  
  def save
     @@all << self
  end
   
  def self.destroy_all
    @@all.clear
  end
  
  def self.create(name)
    song = self.new(name)
    song.save
    song
  end
  
  def artist
    @artist
  end
  
  def artist=(artist)
    #binding.pry
   if @artist.nil?
     @artist = artist
    end
   if self.artist != nil
     @artist.add_song(self)
   end
   return @artist
  end
  
  def genre
    @genre
  end
  
  def genre=(genre)
   # binding.pry
     if @genre.nil?
     @genre = genre
     genre.songs << self
    end
   #if self.genre != nil
    # @genre.add_song(self)
   #end
  # return @genre
  end
  
  
  def self.find_by_name(name)
    @@all.detect {|song| song.name == name}
  end
    
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      return self.find_by_name(name)
    else
      self.create(name)
    end
  end
end















#artist_object = Artist.new("Jay-Z")
#genre_object = Genre.new("reggae")
#Song.new("Song Title", artist_object, genre_object)
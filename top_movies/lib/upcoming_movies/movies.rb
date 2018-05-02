  class Movies
    #class UpcomingMovies::Movies

    attr_accessor :title, :url, :genre_index, :timeurl, :infourl, :reviewurl, :videosurl, :ratings, :year, :genre,
    :directedby, :compaany, :desc, :starring
    @@all = []

    def self.new_from_index_page(movie_row)
      self.new(
      @title =  movie_row.css("h3.movietitle  a").text.strip,
    #  @url =  "https://www.cinemaclock.com#{movie_row.css("h3.movietitle a").attribute("href").text}",
    #  @url =  "movie_row.css("h3.movietitle a").attr("href").text",
      @genre  =  movie_row.css("p.moviegenre").text.strip

    )

    end

    def initialize(title=nil, url=nil, genre=nil )
      @title     =   title
      @url       =   url
      @genre     =   genre

      self.class.all << self

      puts "title: #{title}"
     puts url
     puts "genre #{genre}"
    end

    def self.all
      @@all
    end

    def self.find(id)
      self.all[id-1]
    end

  end

class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres

    def slug
        self.name.strip.downcase.gsub(" ", "-")
    end

    def self.find_by_slug(slug)
        Artist.all.find{|artist| artist.slug == slug}
    end
end
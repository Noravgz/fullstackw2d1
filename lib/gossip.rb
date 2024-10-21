require 'csv'

class Gossip
  attr_accessor :author, :content
      
    def initialize(author, content)
      @author = author
      @content = content
    end

    def save
      CSV.open("db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end
  end

    def self.all
    all_gossip = []
      CSV.read("db/gossip.csv").each do |csv_line|
      all_gossip << Gossip.new(csv_line[0], csv_line[1])
    end
    
    return all_gossip
end

  def self.find(id)
    # On lit tous les secrets dans un fichier CSV
    gossips = CSV.read('db/gossips.csv')
    gossips[id - 1]  # On retourne le secret qui correspond à ce numéro
  end
end

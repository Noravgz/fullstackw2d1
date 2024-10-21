require 'gossip'

class ApplicationController < Sinatra::Base
    get '/' do
      erb :index
    end
  end

  class ApplicationController
    get '/gossips/new/' do
      erb :new_gossip
    end
  end

  class ApplicationController
  post '/gossips/new/' do
    author = params[:gossip_author]
    content = params[:gossip_content]
    
    new_gossip =Gossip.new(author, content)
    new_gossip.save
 
# post '/gossips/new/' do
  puts "Salut, je suis dans le serveur"
  puts "Ceci est le contenu du hash params : #{params}"
  puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
  puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
  puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"
# end

puts "Nouveau gossip ajouté : #{author} - #{content}"
    redirect '/'
  end
end
# Write your code here!

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {}

    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien": {
          points: 10
        },
        "Bismak Biyombo": {
          points: 12
        },
        "DeSagna Diop": {
          points: 24
        }
      }
    }
  }
end


def team_colors(team)
  game_hash.keys.each {|key|
    if game_hash[key][:team_name] == team
      return game_hash[key][:colors]
    end
  }
end

def team_names
  [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end


def num_points_scored(player_name)

    if game_hash[:home][:players][player_name.to_sym]
      return game_hash[:home][:players][player_name.to_sym][:points]
    elsif game_hash[:away][:players][player_name.to_sym]
      return game_hash[:away][:players][player_name.to_sym][:points]
    end

end

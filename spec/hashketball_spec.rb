require 'spec_helper'

describe 'hashketball' do

  describe '#game_hash' do
    let(:top_level_keys) { [:home, :away] }
    let(:team_level_keys) { [:team_name, :colors, :players] }

    it 'returns a hash' do
      expect(game_hash).to be_a(Hash)
    end

    it 'returns the correct top-level keys' do
      top_level_keys.each do |key|
        expect(game_hash.keys).to include(key)
      end
    end

    it 'returns the correct team-level keys' do
      team_level_keys.each do |key|
        expect(game_hash.values.first.keys).to include(key)
      end
    end
  end

  describe '#team_colors' do

    it 'knows the Brooklyn Nets colors are Black and White' do
      expect(team_colors("Brooklyn Nets")).to contain_exactly("Black", "White")
      expect(team_colors("Charlotte Hornets")).to contain_exactly("Turquoise", "Purple")
    end
  end

  describe '#team_names' do

    it 'returns the team names' do
      teams = team_names
      expect(teams.size).to eq(2)
      teams.each do |name|
        expect(["Brooklyn Nets", "Charlotte Hornets"]).to include(name)
      end
    end

  end

  describe '#num_points_scored' do

    it 'knows the number of points scored by each player' do
      expect(num_points_scored("Jeff Adrien")).to eq(10)
      expect(num_points_scored("Bismak Biyombo")).to eq(12)
      expect(num_points_scored("DeSagna Diop")).to eq(24)
    end

  end

end

# If you'd like to work on the bonus, uncomment these tests.

# describe 'bonus' do

#   describe '#most_points_scored' do

#     it 'returns Ben Gordon' do
#       expect(most_points_scored).to eq("Ben Gordon")
#     end

#   end

#   describe '#winning_team' do

#     it 'returns the Brooklyn Nets' do
#       expect(winning_team).to eq("Brooklyn Nets")
#     end

#   end

#   describe '#player_with_longest_name' do

#     it 'returns Brendan Haywood' do
#       expect(player_with_longest_name).to eq("Brendan Haywood")
#     end

#   end

# end

# describe 'super bonus' do

#   describe '#long_name_steals_a_ton?' do

#     it 'returns true' do
#       expect(long_name_steals_a_ton?).to eq(true)
#     end

#   end

# end

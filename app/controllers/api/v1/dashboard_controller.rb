class Api::V1::DashboardController < ApplicationController
  before_action :load_players_resume, only: %i[index]

  def index; end

  private

  def load_players_resume
    @players_resume = Player.select(%( players.id,
                                players.name,
                                players.shirt_number,
                                players.goal,
                                soccer_matches.id AS soccer_match_id,
                                soccer_matches.date,
                                soccer_matches.resume,
                                soccer_matches.victory,
                                soccer_matches.defeat,
                                soccer_matches.tied_score,
                                soccer_matches.match_score))
                            .joins(:soccer_matchs)
                            .where(active: true)
  end
end

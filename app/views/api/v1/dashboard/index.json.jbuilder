json.players_resume @players_resume.each do |player|
  json.player_id        player.id
  json.name             player.name
  json.shirt_number     player.shirt_number
  json.goal             player.goal
  json.soccer_match_id  player.soccer_match_id
  json.date             player.date
  json.victory          player.victory
  json.defeat           player.defeat
  json.tied_score       player.tied_score
  json.match_score      player.match_score
end

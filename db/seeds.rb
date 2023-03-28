# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

## Usuario Administrativo
User.create(name: 'Jesher Minelli Alves', email: 'jesherdevsk8@gmail.com', password: '123123', password_confirmation: '123123', profile: 0)

## Jogador
jesher = Player.create(name: 'Jesher Minelli Alves', nickname: 'jesher', email: 'jesherdevsk8@gmail.com', birthdate: '08-06-1994', shirt_number: 22)

## Partidas Jesher
SoccerMatch.create(player_id: jesher.id, date: '08-01-2023', victory: true, match_score: '8X6')
SoccerMatch.create(player_id: jesher.id, date: '15-01-2023', victory: true, match_score: '6X3')
SoccerMatch.create(player_id: jesher.id, date: '22-01-2023', tied_score: true, match_score: '7X7')
SoccerMatch.create(player_id: jesher.id, date: '29-01-2023', tied_score: true, match_score: '7X7')
SoccerMatch.create(player_id: jesher.id, date: '05-02-2023', defeat: true, match_score: '4X3')
SoccerMatch.create(player_id: jesher.id, date: '12-02-2023', victory: true, match_score: '8X6')
SoccerMatch.create(player_id: jesher.id, date: '19-02-2023', victory: true, match_score: '8X6')
SoccerMatch.create(player_id: jesher.id, date: '26-02-2023', tied_score: true, match_score: '6X6')
SoccerMatch.create(player_id: jesher.id, date: '05-03-2023', victory: true, match_score: '10X6')
SoccerMatch.create(player_id: jesher.id, date: '12-03-2023', tied_score: true, match_score: '5X5')
SoccerMatch.create(player_id: jesher.id, date: '26-03-2023', defeat: true, match_score: '10X6')

## jogador
mateus = Player.create(name: 'Mateus Duarte', nickname: 'mateus cagão', email: 'matoso@gmail.com', birthdate: '01-01-2002', shirt_number: 10)

## Partidas Mateus
SoccerMatch.create(player_id: mateus.id, date: '08-01-2023', victory: true, match_score: '8X6')
SoccerMatch.create(player_id: mateus.id, date: '15-01-2023', victory: true, match_score: '6X3')
SoccerMatch.create(player_id: mateus.id, date: '22-01-2023', tied_score: true, match_score: '7X7')
SoccerMatch.create(player_id: mateus.id, date: '29-01-2023', tied_score: true, match_score: '7X7')
SoccerMatch.create(player_id: mateus.id, date: '05-02-2023', victory: true, match_score: '4X3')
SoccerMatch.create(player_id: mateus.id, date: '12-02-2023', victory: true, match_score: '8X6')
SoccerMatch.create(player_id: mateus.id, date: '19-02-2023', defeat: true, match_score: '8X6')
SoccerMatch.create(player_id: mateus.id, date: '26-02-2023', tied_score: true, match_score: '6X6')
SoccerMatch.create(player_id: mateus.id, date: '05-03-2023', victory: true, match_score: '10X6')
SoccerMatch.create(player_id: mateus.id, date: '12-03-2023', tied_score: true, match_score: '5X5')
SoccerMatch.create(player_id: mateus.id, date: '19-03-2023', defeat: true, match_score: '11X10')
SoccerMatch.create(player_id: mateus.id, date: '26-03-2023', victory: true, match_score: '10X6')

## jogador inativo
Player.create!(name: 'Gustavo Cavallin', nickname: 'frangueiro', email: 'gustavo@gmail.com', birthdate: '01-01-2002', shirt_number: 12, active: false, goal: 0)

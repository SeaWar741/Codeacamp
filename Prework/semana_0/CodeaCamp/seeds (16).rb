player = Player.create(username: "humberto", email: "humberto@gmail.com", password: "humberto")
Game.create(player_id: player.id, subs_destroyed: 4, winner?: true)
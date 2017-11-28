user_1 = TwitterUser.create(email: "humberto@gmail.com", password: "humberto");
Tweet.create(twitter_user_id: user_1.id, text: "Buenos dias");
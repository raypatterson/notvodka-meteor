Meteor.publish "players", -> Players.find {}
Meteor.publish "matches", -> Matches.find {}
Meteor.publish "answers", -> Answers.find {}
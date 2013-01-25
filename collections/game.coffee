###

Collections

Answers
Matches
Players
  
AnswerType =
  YES: 'Yes'
  NO: 'No'

Answer =
  _id: AnswerId
  playerId: PlayerId
  type: AnswerType
  
Matches = 
  _id: MatcheId
  answer: AnswerType
  answers: [
    answer: AnswerId
  , 
    answer: AnswerId
  , 
    answer: AnswerId
  ]

Player =
  _id: PlayerId

###

AnswerType =
  YES : 'Yes'
  NO : 'No'

Players = new Meteor.Collection "players"
Matches = new Meteor.Collection "matches"
Answers = new Meteor.Collection "answers"
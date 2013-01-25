log = (ob) ->
  try
    console.log ob
  catch e
    # no console

getAnswerType = ->
  if Math.random() > .5 then AnswerType.YES else AnswerType.NO

getLastMatch = ->
  _.last Matches.find({}).fetch()

saveAnswer = ( type ) ->

  fields =
    type : type
    
  Answers.insert fields, ( error, result ) ->
    
    if error then throw new Meteor.Error 500, 'Error inserting to Answers'
    
    log 'Answer Id'
    log result


Meteor.methods
  createMatch : ->

    fields =
      correctAnswerType : getAnswerType()
      answers : []

    Matches.insert fields, ( error, result ) ->
      
      if error then throw new Meteor.Error 500, 'Error inserting to Matches'
      
      result

  checkAnswer : ( answerType ) ->

    saveAnswer answerType

    answerType is getLastMatch().correctAnswerType

      
      
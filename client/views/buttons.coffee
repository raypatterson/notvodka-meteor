# Template Helpers

Template.buttons.list = ->
  list = [
    style : 'btn-success'
    answer : AnswerType.YES
  ,
    style : 'btn-danger'
    answer : AnswerType.NO
  ]
  list

Template.buttons.disabled = ->
  if Session.equals 'isMatchActive', false
    return 'disabled'
  else
    return ''

# Methods

createMatch = ->
  Meteor.call 'createMatch', ( error, result ) ->
    log 'createMatch result'
    log result

checkAnswer = ( answerType ) ->
  Meteor.call 'checkAnswer', answerType, ( error, result ) ->
    log 'checkAnswer result'
    Session.set 'isPlayerWinning', result

# Template Events

Template.buttons.events

  'click .btn-match' : ( event, template ) ->

    createMatch()

    Session.set 'isMatchActive', true

  'click .btn-answer' : ( event, template ) ->

    Session.set 'isMatchActive', false

    checkAnswer event.currentTarget.id
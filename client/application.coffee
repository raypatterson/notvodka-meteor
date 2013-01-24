log = (ob) ->
  try
    if not debug then return
    console.log ob
  catch e
    # no console

Meteor.autosubscribe ->
  Meteor.subscribe "answers"

Template.answers.list = ->
  _.pluck Answers.find({}).fetch(), 'answer'

Template.buttons.events
  'click .btn-choice' : ( event, template ) ->
    answer = event.currentTarget.id
    console.log "Answer is #{answer}"
    Answers.insert 
      answer : answer
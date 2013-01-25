log = (ob) ->
  try
    if not debug then return
    console.log ob
  catch e
    # no console

Session.set 'isMatchActive', false
Session.set 'isPlayerWinning', false

# Subscriptions
Meteor.autosubscribe ->
  Meteor.subscribe "players"
  Meteor.subscribe "matches"
  Meteor.subscribe "answers"

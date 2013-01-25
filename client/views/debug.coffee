Template.debug.active = -> 
  debug

Template.debug.match = -> 
  _.last Matches.find({}).fetch()
  
Template.debug.answers = ->
  Answers.find({}).fetch()
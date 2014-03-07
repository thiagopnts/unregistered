
module.exports =

  message: 'Hello! Thanks for trying out Atom.\n\nThis
 is an unregistered evaluation version,
 and although the trial is untimed, a license must be
 purchased for continued use.\n\nWould you like to purchase
 a license now?'

  activate: (state) ->
    @count = state.count or 0
    atom.workspaceView.on('keydown', @counter.bind(@))

  serialize: -> count: @count

  showDialog: ->
    @count = 0
    confirm @message

  counter: ->
    @showDialog() if ++@count > 1000

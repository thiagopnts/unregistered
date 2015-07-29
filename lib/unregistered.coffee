
module.exports =

  message: '''
    Hello! Thanks for trying out Atom.

    This is an unregistered evaluation version, \
    and although the trial is untimed, a license must be \
    purchased for continued use.

    Would you like to purchase a license now?
  '''

  activate: (state) ->
    @count = state.count or 0
    atom.views.getView(atom.workspace).on('keydown', @counter.bind(@))

  serialize: -> count: @count

  showDialog: ->
    @count = 0
    open 'https://github.com/thiagopnts/unregistered' if confirm @message

  counter: ->
    @showDialog() if ++@count > 1000

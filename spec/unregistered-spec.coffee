Unregistered = require '../lib/unregistered'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

# describe "Unregistered", ->
#   activationPromise = null
#
#   beforeEach ->
#     activationPromise = atom.packages.activatePackage('unregistered')
#
#   describe "when the unregistered:toggle event is triggered", ->
#     it "attaches and then detaches the view", ->
#       expect(atom.workspaceView.find('.unregistered')).not.toExist()
#
#       waitsForPromise ->
#         activationPromise
#
#       runs ->
#         Unregistered.activate()

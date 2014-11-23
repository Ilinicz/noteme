App.controller "NotesController", ['$scope', 'Note', ($scope, Note) ->
  #$scope.notes = Note.query()
  $scope.selectedNote = null
  $scope.selectedRow  = null

  $scope.notes = Note.query ->
    $scope.selectedNote = $scope.notes[0]
    $scope.selectedRow 

  $scope.showNote = (note, row) ->
    $scope.selectedNote = note
    $scope.selectedRow = row
]
App.factory 'Note', ['$resource', ($resource) ->
  $resource '/api/v1/notes/:id', id: '@id'
]
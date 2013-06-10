app.factory("GameExpansion", function ($resource) {
  return $resource('/games/:game_id/game_expansions/:id', { game_id: '@game_id', id: '@id' }, {
    create: { method: 'POST', params: { game_id: '@game_id' } },
    update: { method: 'PUT', params: { game_id: '@game_id', id: '@id' } },
    destroy: { method: 'DELETE', params: { game_id: '@game_id', id: '@id' } }
  });
});

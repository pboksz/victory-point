app.factory("GameExpansion", function ($resource) {
  return $resource('/game/:game_id/game_expansion/:id', { game_id: '@game_id', id: '@id' }, {
    create: { method: 'POST', params: { game_id: '@game_id' } },
    update: { method: 'PUT', params: { game_id: '@game_id', id: '@id' } },
    destroy: { method: 'DELETE', params: { game_id: '@game_id', id: '@id' } }
  });
});

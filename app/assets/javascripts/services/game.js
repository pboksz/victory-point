app.factory("Game", function ($resource) {
  return $resource('/game/:id', { id: '@id' }, {
    index: { method: 'GET', isArray: true },
    create: { method: 'POST' },
    destroy: { method: 'DELETE', params: { id: '@id' } }
  });
});

app.factory("Game", function ($resource) {
  return $resource('/games/:id', { id: '@id' }, {
    index: { method: 'GET', isArray: true },
    create: { method: 'POST' },
    update: { method: 'PUT', params: { id: '@id' } },
    destroy: { method: 'DELETE', params: { id: '@id' } }
  });
});

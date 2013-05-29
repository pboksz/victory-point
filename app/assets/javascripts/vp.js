var app = angular.module("vp", ['ngResource']);

app.factory("Game", function ($resource) {
  return $resource('/game/:id', { id: '@id' }, {
    index: { method: 'GET', isArray: true },
    create: { method: 'POST' },
    destroy: { method: 'DELETE', params: { id: '@id' } }
  });
});

app.directive("remove", function () {
  return function(scope, element, attrs) {
    element.bind("click", function () {
      scope.deleteGame(attrs.remove)
    })
  }
});

function GameCtrl($scope, Game) {
  $scope.games = Game.index();
  $scope.newGame = new Game();

  $scope.createGame = function () {
    $scope.newGame.$create(function () {
      $scope.games.push($scope.newGame);
      $scope.newGame = new Game();
    });
  };

  $scope.deleteGame = function(index) {
    Game.destroy({ id: $scope.games[index].id }, function() {
      $scope.games.splice(index, 1);
    });
  };
}

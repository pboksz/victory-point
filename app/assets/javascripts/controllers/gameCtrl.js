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

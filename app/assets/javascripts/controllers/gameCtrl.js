function GameCtrl($scope, Game) {
  $scope.games = Game.index();
  $scope.newGame = new Game();

  $scope.createGame = function () {
    $scope.newGame.$create(function () {
      $scope.games.push($scope.newGame);
      $scope.newGame = new Game();
    });
  };

  $scope.updateGame = function (event, index) {
    var elem = angular.element(event.srcElement);
    var row = elem.parent().parent();

    if(elem.text() == 'edit') {
      elem.text('save');

      $(row).find('input').each( function () {
        var cell = $(this);
        cell.removeAttr('disabled');
      });
    } else {
      elem.text('edit');
      var updatedGame = $scope.games[index];

      $(row).find('input').each( function () {
        var cell = $(this);
        cell.attr('disabled', '');
        updatedGame[cell.data('type')] = cell.val();
      });

      updatedGame.$update({ id: updatedGame.id });
    }
  };

  $scope.deleteGame = function (index) {
    Game.destroy({ id: $scope.games[index].id }, function () {
      $scope.games.splice(index, 1);
    });
  };
}

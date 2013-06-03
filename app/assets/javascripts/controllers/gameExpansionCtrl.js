function GameExpansionCtrl($scope, GameExpansion) {
  $scope.newExpansion = new GameExpansion();

  $scope.createExpansion = function () {
    $scope.newExpansion["game_id"] = $scope.game.id;
    $scope.newExpansion.$create(function () {
      $scope.game.game_expansions.push($scope.newExpansion);
      $scope.newExpansion = new GameExpansion();
    });
  };

  $scope.updateExpansion = function (event, index) {
    var elem = angular.element(event.srcElement);
    var row = elem.parent().parent();
    window.game = $scope.game

    if(elem.text() == 'edit') {
      elem.text('save');

      $(row).find('input').each( function () {
        $(this).removeAttr('disabled');
      });
    } else {
      elem.text('edit');
      var updatedExpansion = $scope.game.game_expansions[index];

      $(row).find('input').each( function () {
        var cell = $(this);
        cell.attr('disabled', '');
        updatedExpansion[cell.data('type')] = cell.val();
      });

      new GameExpansion(updatedExpansion).$update({ game_id: $scope.game.id, id: updatedExpansion.id });
    }
  };

  $scope.deleteExpansion = function (index) {
    GameExpansion.destroy({ game_id: $scope.game.id, id: $scope.game.game_expansions[index].id }, function () {
      $scope.game.game_expansions.splice(index, 1);
    });
  };
}

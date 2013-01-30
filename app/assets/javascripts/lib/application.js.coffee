class VP.Lib.Application
  startOnLoad: ->
    $(document).ready =>
      new VP.Views.Index();

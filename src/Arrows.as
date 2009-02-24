class Arrows extends MovieClip {

  function onLoad() {
    var EventListener = {};
    EventListener.onFullScreen = function( full ){
      if (!full) {
        _root.image.removeMovieClip();
      }
    }
    Stage.addListener(EventListener);
  }

  function onRelease() {
    if (Stage['displayState'] != "fullScreen") {
      Stage['displayState'] = "fullScreen";
      _root.createEmptyMovieClip("image", getNextHighestDepth());
      _root.image.loadMovie(_root.img_src);
    }
  }
}

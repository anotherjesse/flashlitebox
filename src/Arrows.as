class Arrows extends MovieClip {
  function onRelease() {
    if (Stage['displayState'] != "fullScreen") {
      Stage['displayState'] = "fullScreen";
      _root.createEmptyMovieClip("image", getNextHighestDepth());
      _root.image.loadMovie(_root.img_src);
    }
  }

  function onLoad() {
    Stage.addListener({
      onFullScreen: function(full) {
        if (!full) _root.image.removeMovieClip();
      }
    });
  }
}

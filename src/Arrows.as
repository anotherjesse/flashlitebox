class Arrows extends MovieClip {
  function onLoad() {
    Stage.align = "TL";
    Stage.scaleMode = "noScale";
    Stage.addListener({
      onFullScreen: function(full) {
        if (!full) _root.image.removeMovieClip();
      }
    });
  }

  function onRelease() {
    if (Stage['displayState'] != "fullScreen") {
      Stage['displayState'] = "fullScreen";
      _root.createEmptyMovieClip("image", getNextHighestDepth());
      _root.image.loadMovie(_root.img_src);
    }
  }
}

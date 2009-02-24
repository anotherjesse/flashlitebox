class Application extends MovieClip {
  function onLoad() {
    Stage.align = "TL";
    Stage.scaleMode = "noScale";
    attachMovie('arrows', null, getNextHighestDepth(), {_x: 0, _y: 0});
  }
}

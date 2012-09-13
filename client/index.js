require('util')

function runDemo () {
  var director = cc.Director.sharedDirector
  director.attachInView(document.getElementById('cocos2d'))
  //director.displayFPS = true

  var size = director.winSize

  var scene = new cc.Scene
  var layer = new cc.Layer
  scene.addChild(layer)

  var sprite = new cc.Sprite({
    url: 'images/oryx_lofi/lofi_char.png',
    rect: new cc.Rect(64, 0, 32, 32)
  });
  sprite.position = new cc.Point(0, 0)
  sprite.anchorPoint = new cc.Point(0, 0)
  layer.addChild(sprite)

  director.runWithScene(scene)
}

$(document).ready(function(){
  runDemo();
});

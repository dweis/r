$ () ->
  socket = io.connect 'http://localhost'

  director = cc.Director.sharedDirector

  director.attachInView document.getElementById('cocos2d')

  size = director.winSize

  scene = new cc.Scene
  layer = new cc.Layer
  scene.addChild layer

  #socket.on 'news', (data) ->
  #  console.log(data)
  #  socket.emit('my other event', { my: 'data' })

  director.runWithScene(scene)

  map = new cc.TMXTiledMap
    url: 'assets/oryx_lofi/town.tmx'

  layer.addChild map

  sprite = new cc.Sprite 
    url: 'assets/oryx_lofi/lofi_char.png'
    rect: new cc.Rect(64, 0, 32, 32)

  sprite.position = new cc.Point(0, 0)
  sprite.anchorPoint = new cc.Point(0, 0)
  layer.addChild sprite

  console.log(sprite.boundingBox)

{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rVillage",
  "creationCodeFile": "",
  "inheritCode": true,
  "inheritCreationOrder": true,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_52E2E24C","path":"rooms/rVillage/rVillage.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":0,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_52E2E24C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_52E2E24C","path":"rooms/rParent/rParent.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":96.0,"y":128.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Col","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":23,"SerialiseWidth":40,"TileCompressedData":[
-20,1,-20,-2147483648,-20,1,-20,-2147483648,4,1,0,0,1,-4,0,1,1,-3,0,1,1,-4,0,3,1,0,0,-20,-2147483648,4,1,0,0,1,-4,0,1,1,-3,0,
1,1,-4,0,3,1,0,0,-20,-2147483648,4,1,0,0,1,-4,0,1,1,-3,0,-3,1,5,0,1,1,0,0,-20,-2147483648,3,1,0,0,-3,1,3,0,1,
1,-11,0,-20,-2147483648,-2,1,-18,0,-20,-2147483648,-2,1,-18,0,-20,-2147483648,-2,1,-18,0,-20,-2147483648,-2,1,1,0,-17,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-460,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tCol","path":"tilesets/tCol/tCol.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesDecorations","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":23,"SerialiseWidth":40,"TileCompressedData":[
-80,-2147483648,1,69,-50,-2147483648,5,65,0,-2147483648,-2147483648,0,-26,-2147483648,1,64,-50,-2147483648,6,66,31,32,33,-2147483648,63,-35,-2147483648,3,35,32,34,-73,-2147483648,1,5,-31,-2147483648,1,62,-557,
-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tTiles","path":"tilesets/tTiles/tTiles.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesMain","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":23,"SerialiseWidth":40,"TileCompressedData":[
-20,84,-20,-2147483648,-2,94,7,96,173,174,175,176,177,178,-3,96,8,173,174,175,176,177,178,96,96,-20,-2147483648,4,109,105,109,188,-4,189,1,193,-3,109,1,188,
-4,189,3,193,109,109,-20,-2147483648,4,24,85,86,188,-4,189,1,193,-3,15,1,188,-4,189,3,193,15,15,-20,-2147483648,4,39,100,101,188,-4,189,1,193,-3,15,
8,203,204,205,206,207,208,15,15,-20,-2147483648,9,39,115,116,203,204,205,206,207,208,-11,15,-20,-2147483648,8,26,24,15,15,16,35,67,34,-12,17,-20,-2147483648,5,38,
39,15,16,35,-11,32,1,67,-3,32,-20,-2147483648,4,38,39,15,46,-16,47,-20,-2147483648,4,38,39,15,22,-16,23,-20,-2147483648,4,38,26,23,25,-16,38,-20,-2147483648,-20,
38,-460,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tTiles","path":"tilesets/tTiles/tTiles.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Pièces",
    "path": "folders/Pièces.yy",
  },
  "parentRoom": {
    "name": "rParent",
    "path": "rooms/rParent/rParent.yy",
  },
  "physicsSettings": {
    "inheritPhysicsSettings": true,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 360,
    "inheritRoomSettings": true,
    "persistent": false,
    "Width": 640,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":360,"hspeed":-1,"hview":180,"inherit":true,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":640,"wview":320,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": true,
  },
  "volume": 1.0,
}
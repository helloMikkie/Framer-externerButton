Framer.Defaults.backgroundColor = null
style = "font-size": "48px",  "text-align": "center", "line-height":"54px"

canvas = new Layer width: 480, height: 824, scale: 0.8
canvas.center()

mask = new Layer width: 300, height: 360,borderWidth: 1, borderColor: "rgb(255,0,0)" , backgroundColor: "transparent", superLayer: canvas, clip: true
mask.center()

message_button = new Layer width:60, height:60, y:40, backgroundColor:"rgb(255,0,0)",borderRadius: 100
message_button.centerX()
message_button.html = "A"
message_button.style = style

layer = new Layer width:300,height:10, midX: 150,midY:-10,superLayer: mask

message_button.onClick ->
		layer.animate
			properties: {scale:80,backgroundColor: "#000"}
			


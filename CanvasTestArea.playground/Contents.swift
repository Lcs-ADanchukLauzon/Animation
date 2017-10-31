//: [Previous](@previous) / [Next](@next)
//: # Test Area
//:
//: Use this page to experiment with a static image.
//:
//: When you perfect a technique, you can move it into the animated sketch.
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas


/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
let canvas = Canvas(width: 600, height: 600)
canvas.translate(byX: 300, byY: 300)

canvas.fillColor = Color.init(hue: 351, saturation: 11, brightness: 33, alpha: 100)
canvas.drawRectangle(bottomLeftX: -300, bottomLeftY: -300, width: 600, height: 600)

// Building
canvas.fillColor = Color.black
canvas.drawRectangle(bottomLeftX: -200, bottomLeftY: -300, width: 100, height: 200)
canvas.fillColor = Color.yellow
for i1 in stride(from: -260, through: -160, by: 50){
  canvas.drawRectangle(bottomLeftX: -180, bottomLeftY: i1, width: 20, height: 30)
  canvas.drawRectangle(bottomLeftX: -140, bottomLeftY: i1, width: 20, height: 30)
}

// beam of light
canvas.fillColor = Color.init(hue: 64, saturation: 72, brightness: 60, alpha: 100)
canvas.drawShapesWithBorders = false
var beamlights : [NSPoint] = []
beamlights.append(NSPoint(x: -160, y: -100))
beamlights.append(NSPoint(x: 70, y: 140))
beamlights.append(NSPoint(x: 160, y: 30))
beamlights.append(NSPoint(x: -160, y: -100))
canvas.drawCustomShape(with: beamlights)

// Sky circle
canvas.drawShapesWithBorders = true
canvas.drawEllipse(centreX: 160, centreY: 120, width: 180, height: 180)





/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView



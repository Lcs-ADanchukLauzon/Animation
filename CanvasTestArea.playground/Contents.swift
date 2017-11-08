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
let canvas = Canvas(width: 600, height: 300)

// barrel
canvas.fillColor = Color.init(hue: 1, saturation: 0, brightness: 50, alpha: 100)
canvas.drawRectangle(bottomLeftX: 225, bottomLeftY: 175, width: 175, height: 25)

// top slide
canvas.fillColor = Color.black
canvas.drawRectangle(bottomLeftX: 200, bottomLeftY: 150, width: 200, height: 50)


//grip
canvas.fillColor = Color.init(hue: 1, saturation: 0, brightness: 50, alpha: 100)
canvas.drawRectangle(bottomLeftX: 200, bottomLeftY: 75, width: 50, height: 75)
canvas.drawRectangle(bottomLeftX: 200, bottomLeftY: 150, width: 200, height: 20)















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



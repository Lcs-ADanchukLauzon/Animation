import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    var y : Double
    var z : Double
    var dx : Double
    var dy : Double
    var dz : Double

    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = Double(random(from: Int(200.0), toButNotIncluding: Int(401.0)))
        y = 250
        dx = 2
        dy = 2
        z = 250
        dz = 1
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw(){
        canvas.defaultBorderWidth = 3
        canvas.fillColor = Color.white
        //canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        canvas.drawShapesWithFill = false
        x += dx
        y += dy
        z += dz
    
        
        if x > 450 {
            dx = -2
        }
        if x < 50{
            dx = 2
        }
        if y > 475{
            dy = -2
        }
        if y < 25{
            dy = 2
        }
        
        if z > 400{
            dz = -1
        }
        if z < 100{
            dz = 1
        }
        
        // Draw an ellipse in the middle of the canvas
//        canvas.drawEllipse(centreX: Int(x), centreY: Int(y), width: 100, height: 100)
//        canvas.drawEllipse(centreX: Int(x), centreY: Int(y), width: 4, height: 4)
//        canvas.drawEllipse(centreX: Int(z), centreY: 250, width: 200, height: 200)
//        canvas.drawEllipse(centreX: Int(z), centreY: 250, width: 4, height: 4)
        canvas.drawShapesWithFill = false
        canvas.defaultBorderWidth = 3
        if sqrt(pow(x - z, 2) + pow(y - 250, 2)) < 350{
            canvas.borderColor = Color.init(hue: random(from: 0, toButNotIncluding: 361), saturation: 100, brightness: 100, alpha: 100)
            canvas.drawEllipse(centreX: 250, centreY: 250, width: Int(sqrt(pow(x - z, 2) + pow(y - 250, 2))) + 3, height: Int(sqrt(pow(x - z, 2) + pow(y - 250, 2))) + 3)
        }
    
        if canvas.frameCount == 2000 {
            canvas.copyToClipboard()
        }
        
        
    }
    
}

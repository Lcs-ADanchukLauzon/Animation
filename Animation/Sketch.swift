import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    var dx : Int
    var dy : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 200, toButNotIncluding: 401)
        y = 250
        dx = 3
        dy = 3
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        
        canvas.fillColor = Color.init(hue: x, saturation: 100, brightness: y, alpha: 100)
        
        
        
        // Change position
        x += dx
        y += dy
        
        if x > 475 {
         dx = -3
        }
        if x < 25{
            dx = 3
        }
        if y > 475{
            dy = -3
        }
        if y < 25{
            dy = 3
        }
        
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}

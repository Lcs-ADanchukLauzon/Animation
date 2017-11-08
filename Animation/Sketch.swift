import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var dx : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 600, height: 300)
        
        // Set starting position
        x = 200
        dx = -3
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 600, height: 300)
        
        
        // Change position
        x += dx
        
        // barrel
        canvas.fillColor = Color.init(hue: 1, saturation: 0, brightness: 50, alpha: 100)
        canvas.drawRectangle(bottomLeftX: 225, bottomLeftY: 175, width: 175, height: 25)
        
        // top slide
        canvas.fillColor = Color.black
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: 150, width: 200, height: 50)
        
        
        //grip
        canvas.fillColor = Color.init(hue: 1, saturation: 0, brightness: 50, alpha: 100)
        canvas.drawRectangle(bottomLeftX: 200, bottomLeftY: 75, width: 50, height: 75)
        canvas.drawRectangle(bottomLeftX: 200, bottomLeftY: 150, width: 200, height: 20)

       
        if x <= 160{
            dx += 3
        }
        if x == 200{
            dx = 0
        }
    }
    
}

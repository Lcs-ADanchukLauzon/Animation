import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var height : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        height = 400
        canvas.fillColor = Color.black
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
    
    }
  
   // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        canvas.drawShapesWithBorders = false
        x += 1
        
        for i in stride(from: 50, through: 450, by: 25){
        canvas.fillColor = Color.init(hue: i, saturation: 100, brightness: 100, alpha: 100)
        canvas.drawEllipse(centreX: x, centreY: Int(50 * sin(Double(0.02631819699 * Double(x)))) + i, width: 5, height: 5)
        canvas.drawEllipse(centreX: 500 - x, centreY: -Int(50 * sin(Double(0.02631819699 * Double(x)))) + i, width: 5, height: 5)
        }
    }
    
}

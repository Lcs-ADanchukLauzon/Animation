import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var Xc : Int
    // x circle difference
    var Xcd : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 600, height: 600)
        canvas.translate(byX: 300, byY: 300)
        // Set starting position
        Xc = 160
        Xcd = 1
       
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        canvas.translate(byX: 300, byY: 300)
        Xc += Xcd
        
        if Xc > 210{
            Xcd = -1
        }
        if Xc < -210{
            Xcd = 1
        }
        
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
        
        //sky circle
        canvas.fillColor = Color.init(hue: 64, saturation: 72, brightness: 60, alpha: 100)
        canvas.drawEllipse(centreX: Xc, centreY: 120, width: 180, height: 180)
        
        // beam of light
        canvas.drawShapesWithBorders = false
        var beamlights : [NSPoint] = []
        beamlights.append(NSPoint(x: -160, y: -100))
        beamlights.append(NSPoint(x: Xc - 88, y: 140))
        beamlights.append(NSPoint(x: Xc, y: 30 ))
        beamlights.append(NSPoint(x: -160, y: -100))
        canvas.drawCustomShape(with: beamlights)
        canvas.drawShapesWithBorders = true
        
        
        
        
        
        
        
        
    }
    
}

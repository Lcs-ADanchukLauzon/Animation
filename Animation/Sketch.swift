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
        Xcd = 10
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        canvas.translate(byX: 300, byY: 300)
        Xc += Xcd
        
        if Xc > 210{
            Xcd = -10
        }
        if Xc < -210{
            Xcd = 10
        }
        
        canvas.fillColor = Color.init(hue: random(from: 0, toButNotIncluding: 361), saturation: 100, brightness: 100, alpha: 100)
        canvas.drawRectangle(bottomLeftX: -300, bottomLeftY: -300, width: 600, height: 600)
        
        // Building
        canvas.fillColor = Color.init(hue: random(from: 0, toButNotIncluding: 361), saturation: 100, brightness: 100, alpha: 100)
        canvas.drawRectangle(bottomLeftX: -200, bottomLeftY: -300, width: 100, height: 200)
        canvas.fillColor = Color.init(hue: random(from: 0, toButNotIncluding: 361), saturation: 72, brightness: 60, alpha: 100)
        for i1 in stride(from: -260, through: -160, by: 50){
            canvas.drawRectangle(bottomLeftX: -180, bottomLeftY: i1, width: 20, height: 30)
            canvas.drawRectangle(bottomLeftX: -140, bottomLeftY: i1, width: 20, height: 30)
        }
        let randomColorCircle = random(from: 0, toButNotIncluding: 361)
        //sky circle
        canvas.fillColor = Color.init(hue: randomColorCircle, saturation: 72, brightness: 60, alpha: 100)
        canvas.drawEllipse(centreX: Xc, centreY: 120, width: 180, height: 180)
        
        // beam of light
        canvas.drawShapesWithBorders = false
        var beamlights : [NSPoint] = []
        beamlights.append(NSPoint(x: -160, y: -100))
        beamlights.append(NSPoint(x: Xc - 88, y: 140))
        beamlights.append(NSPoint(x: Xc, y: 30 ))
        beamlights.append(NSPoint(x: -160, y: -100))
        canvas.drawCustomShape(with: beamlights)
        
        
        //-----------------------------------------------------------------------------------
        
        // Draw a bat relative to the origin
        let randomColorBat = random(from: 0, toButNotIncluding: 361)
        
        canvas.translate(byX: Xc, byY: 110)
        canvas.rotate(by: Degrees(Xc + 5))
        
        canvas.fillColor = Color.init(hue: randomColorBat, saturation: 100, brightness: 100, alpha: 100)
        canvas.drawEllipse(centreX: 0, centreY: 0, width: 100, height: 50)
        
        // Now "cut out" the wings and head by overlapping circles
        canvas.fillColor = Color.init(hue: randomColorCircle, saturation: 72, brightness: 60, alpha: 100)
        
        // Underside of wings
        canvas.drawEllipse(centreX: -35, centreY: -10, width: 25, height: 25) // left
        canvas.drawEllipse(centreX: -15, centreY: -10, width: 25, height: 25) // left middle
        canvas.drawEllipse(centreX: 15, centreY: -10, width: 25, height: 25) // right middle
        canvas.drawEllipse(centreX: 35, centreY: -10, width: 25, height: 25) // right
        
        // Further down
        canvas.drawEllipse(centreX: 0, centreY: -10, width: 50, height: 10) // middle
        
        // Get rid of rest further down
        canvas.drawRectangle(centreX: 0, centreY: -20, width: 100, height: 10)
        // Now add the head
        canvas.fillColor = Color.init(hue: randomColorBat, saturation: 100, brightness: 100, alpha: 100)
        var headVertices : [NSPoint] = []
        headVertices.append(NSPoint(x: -20, y: 20))
        headVertices.append(NSPoint(x: 20, y: 20))
        headVertices.append(NSPoint(x: 15, y: 40))
        headVertices.append(NSPoint(x: 10, y: 30))
        headVertices.append(NSPoint(x: -10, y: 30))
        headVertices.append(NSPoint(x: -15, y: 40))
        headVertices.append(NSPoint(x: -20, y: 20)) // end where we started
        canvas.drawCustomShape(with: headVertices)
        canvas.translate(byX: -Xc, byY: -110)
        
        canvas.drawShapesWithBorders = true
        
        
    }
    
}


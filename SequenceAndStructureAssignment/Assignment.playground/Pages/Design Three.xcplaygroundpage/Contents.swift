/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Three
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// Generate a grid
canvas.drawShapesWithFill = true
canvas.defaultBorderWidth = 1
canvas.fillColor = Color.blue
canvas.drawShapesWithBorders = false

// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        
        // Draw the shapes
    canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
    }
}

for x in stride(from: 25, through: 475, by: 21){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 14) {
        
        // Get some entropy (a random number, 0 or 1, but never 2)
        let value = random(from: 0, toButNotIncluding: 4)
        
        // Use the random value to decide on the direction of a line
        
        if value == 0 {
            canvas.lineColor = Color.red
            // Draw line that slants up and to the right
            canvas.drawLine(fromX: x - 23, fromY: y - 30, toX: x + 21, toY: y + 25)
            
            //Color
        canvas.lineColor = Color.red
            
        }; if value == 1 {
            canvas.lineColor = Color.orange
            
            // Draw line that slants up and to the right
            canvas.drawLine(fromX: x + 25, fromY: y - 25, toX: x - 25, toY: y + 25)
            
        }; if value == 2 {
            canvas.lineColor = Color.green
            canvas.drawLine(fromX: x - 20, fromY: y - 10, toX: x + 27, toY: y + 25)
        }
        
    }
}



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView

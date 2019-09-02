import UIKit

let que = DispatchQueue(label: "label")

que.async {
    print("1")
    // outer block is waiting for this inner block to complete
    
    que.sync {
        print("2")
        // inner block won't start before outer block finishes
        // => deadlock
    }
}

# DataTransfer
## View: Let's Set it Up
1. Set two View Controls: `FirstViewController` and `SecondViewController`
1. In each View Controller set three things: `Label`, `TextField`, `Button`
1. Create a `segue` from the `FirstViewController` to the `SecondViewController` called: `goToSecond`

## Connet: Let's Connect some Strings
1. Create a second `Cocopod Touch Class` file called `SecondViewController`
1. Selcting the `SecondViewController` click on the `identifyer inspector` and the class you just created to the view controller
1. Select the `FirstViewController` and click on the `Assistant Editor`, lets connet few things:
1. Drag the `Label` into the `FirstViewController` class: `firstLabel`
1. Drag the `Text Field` into the `FirstViewController` class: `firstTextField`
1. Drag the `Button` into the `FirstViewController` class: `clickMeFirstPressed`
* **Note:** the `Button` display Name is `Click Me First` and it's an `IBAction`
1. Select the `SecondViewController` and click on the `Assistant Editor`, lets connet few things:
1. Drag the `Label` into the `SecondViewController` class: `secondtLabel`
1. Drag the `Text Field` into the `SecondViewController` class: `secondTextField`
1. Drag the `Button` into the `SecondViewController` class: `clickMeSecondPressed`
* **Note:** the `Button` display Name is `Click Me Second` and it's an `IBAction`

## Code Part 1: Lets send some data
1. Jump in the `FirstViewController`: 
1. Create `prepareSegue` function and 
```swift
func prepareSegue() { // Swift Function 
if segue.identifier == "gotoSecond" {
let secondVC = segue.destination as! SecondViewController
secondVC.data = firstTextField.text!
}
}
```
* Swift is going to complain and throw an error, ignore for now.
1. Under `clickMeFirst` function run `performSegue` function
```swift
@IBAction clickMeFirst() { //  Swift Function, Autofield
performSegue(eithIdentifier: "gotoSecond", sender: self) // Swift Function, Autofield
}
```
## Code Part 2: Lets receive Data and send it Back
1. Write a protocol 
```swift
protocol getData {
func receiveData(inputs: String)
}
```
1. lets add some variable:
*  `var data = " "`
*  `var delegate: getData?`
1. Under `viewDidLoad()` function let's call the function to recieve the data from the `FirstViewController`
* `secondLabel.text = data`
1. under the `@IBAction clickMeSecondPressed` function, lets send data back to the `FirstViewController`
```swift
@IBACtion clickMeSecondPressed() { // Swift Function
delegate?.receiveData(input: secondTextField.text!)
self.dismiss(true,nil)  // Swift Function 
}
```
## Code Part 3: Lets grab the data
1. Switch in the `FirstViewController` 
1. inherte `getData`
1. under `prepareSegue` function add this line to help us get the Data from `SecondViewController`
`secondVC.delegate = self`
1. Add the protocol function
```swift
func getData(input: String) {
firstLabel.text = input
}
```

# Congs You are Done. 




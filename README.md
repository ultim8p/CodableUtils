# CodableUtils

A set of helper functions of any Codable object.

## Features:

* Get class name from a Codable object:
```swift
let nameString = MyModel.className
print(nameString) // output: MyModel
```

* Convert a Codable object into a dictionary:
```swift
let obj = MyModel(name: "John", age: 24)
let objDict = obj.toDictionary()

// Optionally use a custom JSONEncoder
let objDict = obj.toDictionary(encoder: CustomJSONEncoder())
```

* Convert a dictionary into a Codable object:
```swift
let objDict = ["name": "John", age: 24]
let obj = objDict.toModel(MyModel.self)

//Optionally use a custom JSONDecoder
let obj = objDict.toModel(MyModel.self, decoder: CustomJSONDecoder())
```

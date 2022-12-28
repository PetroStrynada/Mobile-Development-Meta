//https://www.coursera.org/learn/programming-fundamentals-swift/supplement/5fdvu/exercise-create-classes-with-stored-and-computed-properties

/*
 Overview

 You have learned that structs are value types while classes are a reference types (important points to remember) and both help encapsulate your code. Understanding how they differ will help you determine which to use in your code.

 When a value type, like a struct, is copied, you will have unique copies of the original and the new instance. When a reference type is copied, like a class, you will have one instance of the class that has two references to it.

 Tip: Structs are lightweight and classes are more involved. A lot happens behind the scenes in the creation of classes because it does a lot more than a struct would.

  Scenario

 The Little Lemon application design is rich with many images and other assets that give users more details about meals, promotions and discounts rather than just text. Your task is to write a class that represents an internal file of the application and can produce a full file name to load it later correctly for the users to review. You will use stored and computed properties in a class to achieve this.
 */

/*
 class LocalFile {
     var name: String
     let fileExtenuation: String
     init(name: String, fileExtenuation:String) {
         self.name = name
         self.fileExtenuation = fileExtenuation
     }
     var fullFileName: String {
         name + fileExtenuation
     }
 }

 let file = LocalFile(name: "image", fileExtenuation: ".png")
 print(file.fullFileName)
 */


class LocalFile {
    var name: String
    init(name: String) {
        self.name = name
    }
    var fullFileName: String {
        name
    }
}

class LocalFileXML: LocalFile {
    let fileExtenuationXML = ".xml"
    
    override var fullFileName: String {
        name + fileExtenuationXML
    }
}

class LocalFilePNG: LocalFile {
    let fileExtenuationPNG = ".png"
    
    override var fullFileName: String {
        name + fileExtenuationPNG
    }
}


let fileXML = LocalFileXML(name: "fileXML")
print(fileXML.fullFileName)

let filePNG = LocalFilePNG(name: "filePNG")
print(filePNG.fullFileName)

print()
print(fileXML.fullFileName)
print(filePNG.fullFileName)

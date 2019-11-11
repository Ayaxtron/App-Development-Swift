

struct Note : Codable {
    let title : String
    let text : String
    let timestamp : Date
    
    
    

    
}
/*

let newNote = Note(title : "Grecery errands", text: "lechuga, cebolla, etc", timestamp: Date())

let propertyListEncoder = PropertyListEncoder()
if let encodedNote = try? propertyListEncoder.encode(newNote){
    print(encodedNote)
    
    let propertyListDecoder = PropertyListDecoder()
    if let decodedNote = try? propertyListDecoder.decode(Note.self, from: encodedNote){
        print(decodedNote)
    }
}
*/

let documentDirectory = FileManager.Default.urls(for: .documentDirectory, in: .userDomainMask).first!

let archiveURL = documentsDirectory.appendingPathComponent("notes_test").appendingPathExtention("plist")

let propertyListEncoder = PropertyListEncoder()
let encodedNote = try? propertyListEncoder.encode(newNote)

try? encondedNote?.write(to: archiveURL, options: .noFileProtection)


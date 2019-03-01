import Foundation

let tree = "árbol"
let strippedTree = tree.applyingTransform(.stripDiacritics, reverse: false) //arbol

let hello = "你好"
let transliteration = hello.applyingTransform(.mandarinToLatin, reverse: false)

let greeting = NSMutableString(string: "HELLO, WORLD!")
var range = NSRange(location: 0, length: greeting.length )
let titleCase = StringTransform(rawValue: "Title;")
greeting.applyTransform(titleCase, reverse: false, range: range, updatedRange: &range)
print(greeting)


let question = NSMutableString(string: "TE GUSTÓ?")
var questionRange = NSRange(location: 0, length: question.length)
let titleStripDiacritics = StringTransform(rawValue: "Lower; NFD; [:M:] Remove;")
question.applyTransform(titleStripDiacritics, reverse: false, range: questionRange, updatedRange: &questionRange)
print(question)


let string = NSMutableString(string: "á")
var stringRange = NSRange(location: 0, length: string.length)
let nameTransform = StringTransform(rawValue: "Any-Name")
string.applyTransform(nameTransform, reverse: false, range: stringRange, updatedRange: &stringRange)
print(string)


let string2 = NSMutableString(string: "á")
var stringRange2 = NSRange(location: 0, length: string2.length)
let nameTransform2 = StringTransform(rawValue: "NFD; Any-Name;")
string2.applyTransform(nameTransform2, reverse: false, range: stringRange2, updatedRange: &stringRange2)
print(string2)


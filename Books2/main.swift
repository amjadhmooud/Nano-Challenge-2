import Darwin
import Foundation
struct BookPrice{
    var priceOfBook:Double
    
}

let OpjectBook = BookPrice(priceOfBook : 30.0)

var ListBooks:[String : String ] = [
    "start whith why": "It is possible to inspire people through the style of stick and carrotBut great leaders like Steve Jobs" ,
    "But how do it know":"Since the day I learned how computers work, it always felt like I knew a giant secret, but couldn't tell anyone says ",
    "Clean Code": "Defend the code with equal passion 'Business people attack you and want you to sacrifice quality to go faster It’s like saying to a surgeon'Stop all that silly hand washing before surgery",
    "Zero to One":"Customers won’t care about any particular technology unless it solves a particular problem in a superior way And if you can’t monopolize a unique solution for a small market you’ll be stuck with vicious competition",
    "You don't know JS": "code that you cannot trust is code that you do not understand. The reverse is true also: code that you don’t understand is code you can’t trust"]


print("------------------- 📚Welcome To Books Program📚 -----------------------")
print("Enter your Name😻: ")
let UserName=readLine()
print("-------------------------------------------------------------------------")
print("Hello ,\(UserName!)")

print("Do you Want To Read Or Download the Book 🤔?")

let answr=readLine()

print("--------------------------The List Books:📃--------------------------------")
if (answr=="read"){
    listBook()
    
    print("What is the Book Want To Read 🤔?")
    
    let userBook = readLine()!
    
    
    print(getBook(bookName:userBook))
    
}
else if (answr=="download"){
    listBook()
    //print(ListBooks)
    print(" What Book Do you Want to Download 🤔?")
    let downbook = readLine()!
    let downloadBook = getBook(bookName:downbook)
    print(downloadBook)
    print("Download Successfully ✅")
    
}else{
    print(" Not Found 😓 ")
    
}


func listBook(){
    
    let libooks = """

[1] - start whith why❓,,Author: Simon Sinek

[2]- But how do it know 📕,,Author: J.Clark

[3] - Clean Code 🧹,,Author: Robert Cecil Martin

[4] - Zero to One ✏️ ,,Author:Robert Cecil Martin

[5] - You don't know JS ❕,,Author: Kyle Simpson

"""
    print(libooks)
}


func getBook (bookName : String) -> String
{
    let OpjectBook = BookPrice(priceOfBook : 300.0)
    
    for( key , value) in ListBooks{
        
        if  key == bookName
                
        {
            
            return value + " Price = \n" + String(OpjectBook.priceOfBook) + " $ "
            
            
        }
        
        
    }
    
    
    return "Not Found!"
}

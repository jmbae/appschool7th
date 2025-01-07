
// 함수 선언 부분
func sayHello() /* -> Void 생략 */ {
    print("Hello")
//    return 이 없음. Void
}

// 함수 실행 부분
sayHello()

func buildMessageFor(name: String, count: Int) -> String {
    return "\(name) has bought \(count) books"
}

let message0 = buildMessageFor(name: "Apple", count: 3)
print(message0)

func buildMessageFor(userName name: String, userCount count: Int) -> String {
    return "\(name), you are customer number \(count)"
}

let message1 = buildMessageFor(userName: "John", userCount: 100)

func buildMessageFor(_ name: String = "Customer", count: Int) -> String {
    return "\(name), you are customer number \(count)"
}

let message3 = buildMessageFor(count: 100)
let message4 = buildMessageFor("아무개", count: 100)
print(message3)
print(message4)

// BankAccount라는 클래스를 정의합니다
class BankAccount {
    // 계좌 잔액을 저장하는 변수 (Float 타입)
    var accountBalance: Float
    // 계좌 번호를 저장하는 변수 (Int 타입)
    var accountNumber: Int
    
    // 초기화 메서드(생성자)
    // number: 계좌번호, balance: 초기 잔액을 매개변수로 받습니다
    init(number: Int, balance: Float) {
        // self는 현재 인스턴스를 가리킵니다
        // 매개변수의 값을 인스턴스 변수에 할당합니다
        self.accountNumber = number
        self.accountBalance = balance
    }
    
    func displayBalance() {
        print("Account number is \(accountNumber)")
        print("Your balance is \(accountBalance)")
    }
    
    // 클래스 메서드 (인스턴스 생성 없이 호출 가능)
    // class func 은 상속 후 재정의(오버라이드)가능 합니다.
    class func getMaxBalance() -> Float {
        return 100000.00
    }
}

var account1 = BankAccount(number: 12312312, balance: 400.54)
account1.displayBalance()
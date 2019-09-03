# A 스위프트의 주요 프로토콜

| 프로토콜 이름               | 설명                                                         |
| --------------------------- | ------------------------------------------------------------ |
| **AnyObject**               | 모든 클래스 타입이 암시적으로 준수하는 프로토콜이다.         |
| **CustomStringConvertible** | 사용자정의 텍스트 표현을 할 수 있는 타입이다. 사용자정의 텍스트 표현은 print 등의 함수에서 사용하는 출력 스트림에 쓰일 수 있다. |
| **Equatable**               | == 및 != 연산자를 사용하여 값이 동일한지 판달할 수 있는 타입니다. 이 프로토콜을 채택하면 해당 타입을 위한 == 연산자를 구현해야 한다. 그러면 표준 라이브러리에서 != 연산자를 자동으로 구현해준다. |
| **Error**                   | 던질 수 있는 오류 값을 나타내는 타입이다.                    |
| **IteratorProtocol**        | 시퀀스를 통한 반복을 위해 반복 상태와 인터페이스를 캡슐화한다. |
| **Hashable**                | 정수 해시 값을 제공하고 Dictionary의 키가 될 수 있는 타입이다. |
| **Collection**              | 요소에 인덱스와 서브스크립트로 접근할 수 있는 시퀀스이다.    |
| **IntegerArithmetic**       | 정수 연산을 지원하기 위한 요구사항이다.                      |
| **BinaryInteger**           | 스위프트의 정수 타입을 위한 요구사항이다.                    |
| **Sequence (SequenceType)** | for-in 구문을 통해 반복될 수 있는 타입이다.                  |
| **SignedInteger**           | 스위프트의 부호가 있는 정수 타입을 위한 요구사항이다.        |
| **SignedNumeric**           | 뺄셈 연산이 가능하며 음(Negative)의 표현이 가능하고 0으로 초기화될 수 있는 타입이다. |
| **TextOutputStreamable**    | 텍스트 스트리밍 기능을 실행할 수 있는 타입이다. 이 프로토콜의 인스턴스는 어떤 출력 스트림이든 쓰일 수 있다. 이 프로토콜을 준수하는 대표적인 타입으로 String, Character, UnicodeScalar 등이 있다. |
| **UnsignedInteger**         | 스위프트의 부호가 없는 정수 타입을 위한 요구사항이다.        |

### ExpressibleByLiteral

리터럴은 코드에 쓰인 값의 타입대로 그 타입의 인스턴스를 생성할 수 있도록 하는 표현이다. ExpressibleByLiteral 종류*의 프로토콜은 말 그대로, 코드에 쓰이는 그대로 자신의 타입으로 인스턴스를 초기화하고 생성할 수 있는 타입의 프로토콜을 뜻한다.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            

> \* ExpressibleByLiteral 자체는 프로토콜 이름이 아니다. ExpressibleByOOOLiteral 프로토콜 타입을 통칭하기 위해 저자가 임의로 사용했다.

다음은 ExpressibleByLiteral류의 프로토콜이다.

| 프로토콜 이름                         | 설명                                                         |
| ------------------------------------- | ------------------------------------------------------------ |
| **ExpressibleByArrayLiteral**         | 배열 리터럴을 통해 초기화할 수 있는 타입이다.                |
| **ExpressibleByBooleanLiteral**       | 불리언 리터럴을 통해 초기화할 수 있는 타입이다.              |
| **ExpressibleByDictionaryLiteral**    | 딕셔너리 리터럴을 통해 초기화할 수 있는 타입이다.            |
| **ExpressibleByFloatLiteral**         | 부동소수 리터럴을 통해 초기화할 수 있는 타입이다.            |
| **ExpressibleByIntegerLiteral**       | 정수 리터럴을 통해 초기화할 수 있는 타입이다.                |
| **ExpressibleByNilLiteralLiteral**    | nil 리터럴을 통해 초기화할 수 있는 타입이다.                 |
| **ExpressibleByStringLiteral**        | 문자열 리터럴을 통해 초기화할 수 있는 타입이다.              |
| **ExpressibleByUnicodeScalarLiteral** | 유니코드 스칼라 값을 갖는 하나의 문자를 갖는 문자열 리터럴을 통해 초기화할 수 있는 타입이다. |



# C 스위프트의 예약어

예약어는 프로그래밍 언어에서 미리 사용하기로 약속되어 있는 단어로, 식별자로 사용할 수 없다. 스위프트의 일부 예약어는 강세표를 사용하여 이름으로 사용할 수 있다. 

#### 키워드, 수식어, 특수기호

프로그래밍 언어에서 특정 기능을 실행하기 위해 미리 지정해둔 단어를 키워드라고 한다. 즉, 명령어나 어떤 의미가 부여된 단어이다. 프로그래밍 언어에서 지정한 키워드는 다른 용도로 사용하거나 다른 식별자로 사용할 수 없다. 그렇지만 몇몇 키워드는 다른 곳에서도 사용이 가능하다. 키워드와 수식어는 프로그래밍 언어에서 사용을 미리 예약해 둔 예약어의 한 종류이다. 또한 특정 몇몇 특수기호도 예약어로 지정되어 있다. 

키워드는 스위프트에서 사용하기로 미리 예약해놓은 키워드로 식별자로 사용할 수 없다. 다만 강세표를 사용하면 식별자로 사용할 수 있다. 또, inout, var, let 키워드를 제외한 키워드는 함수의 매개변수 이름 및 전달인자 레이블로 사용할 수 있다.

- 선언에 사용하는 키워드 : associatedtype, class, deinit, enum, extension, fileprivate, func, import, init, inout, internal, let, open, operator, private, protocol, public, static, struct, subscript, typealias, var
- 구문에 사용하는 키워드 : break, case, continue, default, defer, do, else, fallthrough, for, guard, if, in, repeat, return, switch, where, while
- 패턴에 사용하는 키워드 : _
- 타입과 기타 표현에 사용하는 키워드 : as, catch, false, is, nil, rethrows, super, self, Self, throw, throws, true, try, #column, #file, #function, #line, #sourceLocation
- \#으로 시작하는 키워드 : #available, #column, #else, #elseif, #endif, #file, #function, #if, #selector, #sourceLocation
- 특정 문맥에 의해 예약된 키워드 : associativity, convenience, dynamic, didSet, final, get, infix, indirect, lazy, left, mutating, none, nonmutating, optional, override, postfix, precedence, prefix, Protocol, required, right, set, type, unowned, weak, willSet 
- 사용자정의 연산자로 사용이 불가능한 특수기호: (, ), {, }, ., ,, :, ;, =, @, &(전위 연산자), ->, `, ?, !(후위 연산자)
- 선언 수식어: dynamic, final, lazy, optional, required, weak, open, public, internal, fileprivate, private
 protocol View {
     associatedtype Body : View
     var body: Self.Body { get }
 }

extension Never : View {
    typealias Body = Never
}

extension View where Body == Never {
    var body: Never {
        fatalError()
    }
}

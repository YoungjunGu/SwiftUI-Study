# SwiftUI - Text,Image,MapView 적용  

### Before the start  

- canvas 기능 사용하기(MacOS 10.15 이상 지원)

<img width="174" alt="image" src="https://user-images.githubusercontent.com/33486820/65966707-737ac400-e49b-11e9-9ccf-97294bc17b42.png">

위에서 캔버스를 클릭하고 resume 버튼을 누를시에 아래와 같이 좌측에 코드를 실시간으로 오른쪽 preview에서 확인할 수 있다.  

<img width="1106" alt="image" src="https://user-images.githubusercontent.com/33486820/65966906-b472d880-e49b-11e9-89db-149712891c0f.png">

- SwiftUI Inspector 사용하기  

<img width="259" alt="image" src="https://user-images.githubusercontent.com/33486820/65967017-de2bff80-e49b-11e9-8a38-6804150ff3b5.png">

<img width="312" alt="image" src="https://user-images.githubusercontent.com/33486820/65967067-f3a12980-e49b-11e9-99a7-cc59d96689fb.png">

preview에서나 코드에서 `command + click`을 통해 instpector로 접근하여 설정하는 것이 가능하다.  


## Text Label  


- text Label 생성  

```swift
Text("Hello World")
```

- text Label 줄 개수 제한  

```swift
Text("Hello World")
    .lineLimit(3)

// 줄 개수에 제한을 두지 않으면 nil 대입
Text("Hello World")
    .lineLimit(nil)
```

- 글자 일부를 ... 으로 줄이기  

```swift
Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
        .truncationMode(.middle)			// .head .middle .tail
```

<img width="286" alt="image" src="https://user-images.githubusercontent.com/33486820/65967441-8d68d680-e49c-11e9-8f43-1e156b890a95.png">


## Text Font, Color, Spacing  

- text label font 변경

```swift
Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
    .lineLimit(nil)
    .font(.largeTitle)
```    

- 여러 줄에 대한 정렬은 `multilineTextAlignment`를 통해 제어

```swift
Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
    .lineLimit(nil)
    .font(.largeTitle)
    .multilineTextAlignment(.center)
```  

- 텍스트의 색상을 변경하기 위해서는 `foregroundColor`를 사용  

```swift
Text("Lorem ipsum")
    .foregroundColor(Color.red)
```  

- 텍스트의 음영색, 배경색을 변경하고 싶다면 `background`를 사용  

```swift
Text("Lorem ipsum")
    .background(Color.yellow)
    .foregroundColor(Color.red)
```

- 텍스트의 줄 간격은 `lineSpacing`을 사용

```swift
Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
    .lineLimit(nil)
    .font(.largeTitle)
    .lineSpacing(50)
```  

## TextView의 text format 설정  

```swift
truct ContentView: View {
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    var dueDate = Date()
    var body: some View {
        Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
    }
}
```









# UIComponent



<img src="/Users/kim/Desktop/소프트/관련사진/스크린샷 2020-11-29 오후 8.40.54.png" style="zoom:45%;" />

<img src="/Users/kim/Desktop/소프트/관련사진/스크린샷 2020-11-29 오후 8.41.11.png" style="zoom:45%;" />



## Label

오로지 읽을수 있는 text만 보여주는 UIComponent, 크기 조절 및 다양한 속성(font 종류, 크기, 배경색 등)을 설정하여 화면에 보여주는 요소



## Button

눌렀을 때 action을 보내주는 UIComponent, 버튼에 이미지, 텍스트와 같은 설정이 가능하고 추가적으로 눌렀을 때 버튼의 속성을 명시하는 것이 가능하다



## Segmented Control

수평의 버튼 그룹들을 보여주는 UIComponent, 단일, 다중 또는 일련의 동작을 구성할 수 있지만 각 segment는 text, image중 하나로만 표현되어야 한다



## Text Field

사용자가 텍스트를 read-write 해줄 수 있는 UIComponent, 사용자가 눌러서 글을 쓸수도 있게 만들고 삭제도 가능하게 해준다



## Slider

수평으로 보여지는 움직이는 바를 보여주는 UIComponent, 사용자는 thumb를 이용하여 이동시킬 수 있고 이는 따로 slider를 커스텀하여서 사용해도 된다.



## Switch

주어진 상태에서 눌렀을 때 변화를 보여주는 UIComponent, 눌러서 상태를 바꿀 수 있다.



## Acitivity indicator View

환형으로 이루어진 progress를 나타내는 UIComponent,  어떠한 작업의 진행 상황을 보여준다. 단, 명확한 퍼센트는 볼 수 없다.



## Progress View

퍼센트를 보여주는 progress bar형태의 UIComponent, Activity indicator View와는 다르게 막대 형태로 이루어진 bar가 task의 진행 상태를 명확하게 알 수 있게 보여준다.



## Page Control

페이지 리스트를 점으로 보게 해주는 UIComponent, 현재 페이지에 해당하는 점을 하이라이트 해서 보여주며 우측, 좌측 클릭을 통해 페이지 이동을 한다.



## Stepper

Label 또는 Text Field의 값을 증가 시키거나, 감소 시킬때 사용하는 UIComponent, 다른 UIComponent(text)와 결합하여 사용한다



### Horizontal Stack View & Vertical Stack View

수평 또는 수직 형태로 view가 stack처럼 쌓여 보이게 만드는 UIComponent, view의 삭제 추가가 가능하며 또한 customization을 지원하기 때문에 수정하여 사용하는 것도 가능하다. 



### Table View & Table View Cell

각 행에 대해서 data source와 delegate를 통해 스크롤이 가능한 view를 보여주는 UIComponent이고, 각 행은 Table View Cell에 해당한다

Table View Cell은 table view의 구체적인 속성이나 보여주는 요소 등을 설정가능하다.



### Image View

이미지  또는 이미지의 연속을 애니메이션 형태로 보여주는 UIComponent



### Collection View & Collection View Cell

Table View와 유사하게 data source와 delegate를 통해 스크롤이 가능한 cell들을 보여주지만 custom layout을 통해 table view 보다 자유로운 view를 지원한다는 특징이 존재한다.



### Collection Reusable View

기본적인 Collection View의 형태에 Header와 Footer가 더해지는 형태를 띄는 UIComponent



### Text View

Text Field와 유사하지만 다른 점은 multi-line read-write를 제공한다는 점이 가장 큰 차이점을 보이고 Text View 역시 font속성, 크기, 정렬과 같은 다양한 속성을 변경하는 것이 가능하다.



### Scroll View

스크롤 할 영역을 설정 가능하게 하는 UIComponent, 이는 application의 창의 크기보다 보다 더 큰 크기의 내용을 스크롤을 통해 보여주는 UIComponent이다.



### Date Picker

날짜와 시간을 선택 가능하게 하는 UIComponent, 회전을 통해 유저에게 날짜와 시간을 선택하도록 한다



### Picker View

Date Picker와 마찬가지로 회전을 해서 어떠한 item(label, image)를 선택 하게 만드는 UIComponent



### Visual Effect View with Blur

뒤에 존재하는 view를 흐리게 처리하게하는 UIComponent, 흐리게 처리하는 것은 커스터 마이징이 가능하다



### Visual Effect View with Blur and Vibrancy

Visual Effect View with Blur와 마찬가지로 거의 똑같지만 흐리게 하는것과 동시에 흔들리게 하는 효과를 준다.



### Map Kit View

내장되있는 맵 인터페이스를 제공하는 UICompnent, 맵의 정보를 보여주거나 맵에 원하는 지역, 지점을 찍어서 사용자 정의로 보여주는 것이 가능하다



### MetalKit View

view 화면에 그림을 그리거나 어떠한 것을 그래픽적으로 랜더링 해서 보여줄 때 사용되는 UIComponent이다. 사용자는 view에 그려서 view에 반영 시킬수 도 있다. 이는 MTLRenderPassDescriptor라는 object에 의해 관리되어진다.



### GLKit View

수학 라이브러리를 이용해 백그라운드에서 텍스처를 로딩하거나 할때도 사용하지만 직접적으로 MetalKit View처럼 사용가능하다.



### SceneKit View

3D형태의 이미지를 보여주기 위해 사용되는 UIComponent, 로딩, 조작, 랜더링과 같은 작업들을 할 수 있게 도와준다.



### SpriteKit View

2D의 장면을 SpriteKit framework를 이용하여 편리하게 보여주는 UIComponent



### ARKit SceneKit View & SpriteKit View

각 Kit에 해당하는 Framework를 통해 AR 서비스를 쉽게 제공하는 UIComponent



### WebKit View

내장되어있는 웹페이지 내용을 보여주게 하는 UIComponent



### RealityKit AR View

3D 형태의 이미지를 쉽게 로딩가능하고 조작가능하고 그리고 랜더링이 쉽게 현재 어플리케이션에서 구동하게 만드는것 이는 RealityKit framework를 기반으로 동작한다.



### View

그리기, subview, event와 같은 것들을 사각형의 지역에서 보여주게 기능하며 이는 부모 view의 hierarchy를 따른다.



### Container View



Defines a region within a view controller's view hierarchy to host a child view controller. The child view controller is specified with an embed segue.



### Navigation Bar

상태바 바로 아래에 네비게이션 바가 나타나게 되며 이는 hierarchical content를 보여주며 stack을 사용하여 instance를 관리한다.

좌측 버튼에는 뒤로 가는 버튼 중앙에는 제목, 우측에는 custom view를 통해 구성할 수 도 있으며 추가적인 버튼을 통해서 구성이 가능하다. 단 직접적을 해당 네비게이션 바의 객체에 직접 접근해서는 안된다.



### Navigation item

네비게이션 아이템은 네이베이션 바의 객체 스택에 캡슐화되어 있는 item이라고 할 수 있다. 이는 네비게이션 바에 무엇이 있는지 언제, 어떻게 표현되어야하는지 까지 설정이 가능하다. 네비게이션 아이템은 꼭 제목을 가지고 있어야한다.



### Toolbar

화면 하단의 toolbar를 보통 보여주는데 이는 toolbar의 아이템을 선택하여 사용하게 된다. 이는 커스텀 view를 통해서 자유롭게 설정이 가능하다.



### Bar Button Item

각 bar의 버튼은 버튼 UIComponent와 유사하게 동작합니다. 이는 제목, 이미지, action 그리고 대상과 같은 것들도 지정 할 수 있으며 system에서 제공한 이미지를 사용하여 구성할 수 도 있습니다.



## Tab Bar

바에서 선택된 view, 하위 task 또는 모듈을 보여준다



## Tab Bar Item

Bar Button Item과 유사하지만 오직 하나로 구성되어있으며 제목 이미지, 연결될 view를 가지고 있습니다.



## Search Bar

search icon을 추가할수도 있으며, 원하는 결과를 text를 넣으면 결과를 도출해주는 UIComponent 입니다.



## Menu Command

Command은 메뉴의 다른 Command와 그룹화되어 있으며, 선택한 경우 응답을 통해 메시지를 보냅니다. 명령어는 작업을 수행할 뿐만 아니라 체크 표시로 표시된 설정을 수정하는 경우가 많습니다.



## Main Menu

디폴트 메뉴를 제공과 macOS 상에서의 main menu 명령까지 제공합니다



## Sub Menu

해당 메뉴의 하위 메뉴들을 보여주는 UIComponent



## Inline selection Menu

하위 메뉴들을 리스트로 보여주는 UIComponent



##   *<span style="color: skyblue">다양한 View에 관련된 View Controller  </span>*



## View Controller

toolbar, navigation bar, application view와 같은 것에 대한 view관리 functionality를 제공한다. UIViewController는 또한 회전, 장치 방향 전환까지 설정하는 것이 가능합니다.



## Stroy Reference

stroyboard에 여러 파일들을 포함시키는 것이 가능하고, seues(장면 전환)을 사용하여 하나의 스토리보드에서 다른 스토리보드로 전환 가능하게 만듭니다.



## Navigation Controller

탐색 컨트롤러는 bar과  컨트롤러 view의 stack을 관리합니다. 각 뷰 컨트롤러는 navigation bar의 어떤 navigation item이 보여지는지 커스터 마이징이 가능합니다. view controller가 스택에서 pop이 되게 된다면 적절하게 업데이트를 진행합니다.



## Table View Controller

자동적으로 instance 생성과 동시에 정확한 위치와 크기를 조절하고 delegate 와 data source를 통해 view를 구성하게 된다.



## Collection View Controller 

Table View 와 유사하게 자동적으로 instance 생성과 동시에 정확한 위치와 크기를 조절하고 delegate 와 data source를 통해 view를 구성하게 된다.



## Tab Bar Controller

각각의 controller는 tab bar item을 관리하며 각각의 View controller는 tab bar item의 정보 제공과 item 선택시에 연출을 담당합니다.



## Split View Controller

split view controller는 master-detail 잍너페이스를 구성하는데 종종 사용되며  일반적으로 리스트로 표현됩니다. 이는 자식 view controller의 초기 변경을 위해 사용됩니다.



## Page View Controller

page를 손가락으로 넘김을 통해서 자동적으로 페이지 이동을 보여주며 이는 data source와 deletgate와 함께 사용됩니다. 이는 수직, 수평과 같은 방향 전환이 가능한 특성을 가지고 있습니다.



## Hosting View Controller

Customize the SwiftUI view hierarchy contents by declaring a custom subclass of UIHostingController that programmatically assigns its root view.
You can optionally define a Segue Action on the source view controller that programmatically returns a destination Hosting Controller initialized with the desired root view.



## Object

사용자 지정 클래스 inspactor을 사용하여 이 개체를 특정 클래스의 인스턴스로 변환합니다.
이 개체는 종종 뷰 컨트롤러와 별개의 사용자 지정 컨트롤러를 인스턴스화하는 데 사용되지만 여전히 뷰에 대한 작업 및 outlet 관계를 유지합니다.



## *<span style="color: skyblue">다양한 Gesture에 관련된 Gesture Controller  </span>*



## Tap Gesture Controller

텝을 할때 action message를 전송 (단일 또는 여러번 터치)



## Pinch Gesture Controller 

두 손가락으로 오므리거나 피는 것을 통한 action message 전송(zoom in, out)



## Rotatation Gesture Controller

두 손가락으로 회전 시킬때 action message를 전송



## Swipe Gesture Controller

위나 아래로 손가락으로 당기거나 내리기를 통한 action message 전송. 이는 단일, 여러번 터치, 단일 방향, 여러방향 과 같은 여러 설정들이 가능함



## Pan Gesture Controller

드래그를 통한 움직임을 action message를 전송



## Screen Edge Pan Gesture Controller

스크린의 가장자리에서 드래그를 하게 되면 action message 전송



## Long press Gesture Controller

꾹 누를때 action message 전송(여러 반응에 대해서 대처 가능: 단일, 반복, 다중 등)



## Custom Gesture Controller

사용자의 편의성에 맞추어서 맞춤 제스처를 통한 action message 전송 가능






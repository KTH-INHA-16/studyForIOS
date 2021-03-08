 # **AutoLayout에 관련된 사항들**



## AutoLayout

현재 존재하는 View의 제약조건을 바탕으로 관계되어있는 모든 view의 요소(UIComponent)들의 위치와 크기를 동적으로 계산하여 위치시킨다. 

다양한 기기들에 대한 호환성을 높여주는 점이 존재한다.





## 1. UIComponent 스스로에 대한 AutoLayout

<img src="/Users/kim/Desktop/소프트/관련사진/스크린샷 2020-11-29 오후 7.59.43.png" style="zoom:50%;" />

Width/Height: View 안에서 UIComponent가 고정 넓이, 높이(Width, Height)를 정할 수 있으며 

AspectRatio는 해당 UIComponent의 가로 세로의 비율을 정할 수 있다.



## UIComponent와 Safe Area와의 AutoLayout

<img src="/Users/kim/Desktop/소프트/관련사진/스크린샷 2020-11-29 오후 8.00.15.png" alt="스크린샷 2020-11-29 오후 8.00.15" style="zoom:50%;" />

UIComponent와 Safe Area랑 AutoLayout을 설정 할 수 있다 

여기서 Leading, Top, Trailing, Bottom 4가지 특성이 먼저 두드러 지게 나타는데

우선 Leading은 좌측에서 부터, Top은 상단에서 부터, Trailing은 우측에서 부터, Bottom은 하단에서 부터를 의미한다 

따라서 위의 4가지는 Safe Area로 부터 좌측, 상단, 우측, 하단 으로부터 얼만큼 공간을 띄워 둘 것이냐라고 AutoLayout을 설정 할 수 있다.



Center Horizontally / Vertically: 해당 UIComponent를 수평/ 수직에 맞게 중앙에 위치 시키시키는 AutoLayout 옵션중 하나입니다.

이를 둘다 사용하면 Safe Area 정중앙으로 정렬이 가능하게 됩니다.



Equal Widths / Height: 기기와 상관없이 동일한 길이와 높이게 가지게 만드는 AutoLayout 옵션

Aspect Ratio: Safe Area와의 가로 세로 비율을 정하는 AutoLayout 옵션



## UIComponent와 다른 UIComponent 와의 AutoLayout

<img src="/Users/kim/Desktop/소프트/관련사진/스크린샷 2020-11-29 오후 8.00.00.png" alt="스크린샷 2020-11-29 오후 8.00.00" style="zoom:50%;" />



Horizontal / Vertical Spacing: 대상이 되는 UIComponent와 픽셀만큼 가로/세로 거리를 띄운다.

Vertical BaseLine Standard Spacing: 대상이 되는 UIComponent를 기점(아랫단)으로 하여 수평선을 토대로 수직 방향의 거리를 세팅 할 수 있다.

Top, Button: 어느 한 UIComponent의 상/하 선을 기준으로 정렬하게 해준다. 기준이 되는 UIComponent이 아닌 나머지 하나의 Y축에 대한 AutoLayout설정을 하지 않아도 된다.

First BaseLine: 기준이 되는 UIComponent의 실제 Content의 하단을 기준으로 정렬하게 한다.

Center Vertically/Horizontally: 기준이 되는 UIComponent와 수직/ 수평으로 정렬하게 만든다.

Leading/Trailing: 기준이 되는 UIComponent의 좌/우 선을 기준으로 정렬한다.

Equal Widths/Heights: 화면 전체 크기의 변화가 존재하더라도 해당 UIComponent와의 길이/높이의 배율을 정해주는 AutoLayout

Aspect Ratio: 대상 UIComponent와 해당 UIComponent와의 가로 세로 비율을 정할 수 있는 AutoLayout설정이다.




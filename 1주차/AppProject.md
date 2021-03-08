# AppProject(XcodeProj에 관해)

### Protject 디렉토리의 관해서



우선 project디렉토리를 보게 되면 <span style="color: red">  info </span>, <span style="color: blue">build settings</span>, <span style="color: green">swfit packages</span> 3가지 영역으로 구분된다는 것을 확인 가능하다.

<img src="/Users/kim/Desktop/소프트/관련사진/스크린샷 2020-11-29 오후 8.46.10.png" style="zoom:50%;" />

## 1. <span style="color: red">info</span>

<img src="/Users/kim/Desktop/소프트/관련사진/스크린샷 2020-11-29 오후 8.45.42.png" style="zoom: 33%;" />

해당 부분이 제일 핵심적인 어플리케이션의 개략적 정보를 확인 할 수 있다고 생각한다. 

*Deployment Target*

 해당 어플리케이션이 IOS의 어느 버전에서(OS X)에서 실행되는 환경을 설정해주는 부분이다

*Configurations*

각기 다른 상황(Debug, Release, Paid, Unpaid....)와 같은 다양한 상황에서 어플리케이션을 빌드하여 각기 다른 버전을 확인 하기 위해 사용

밑의 for command-line build을 통해 특정 build를 선택하여 command-line으로 build하는 것이 가능하고 밑의 체크 박스를 통해 병렬화를 통해 빌드를 할수도 있다.

*Localizations*

해당 부분에서 어느 국가의 언어를 기반으로 하여 어플리케이션의 언어를 구성하는 곳이며 여러 나라들의 localization을 지원한다.





## 2. <span style="color: blue">Build Settings</span>

<img src="/Users/kim/Desktop/소프트/관련사진/스크린샷 2020-11-29 오후 8.45.53.png" alt="스크린샷 2020-11-29 오후 8.45.53" style="zoom:33%;" />

### 1. Architectures

Addtional SDKs: 추가적인 기본 SDK를 제외하고 추가로 설정할 SDK를 추가해주는 설정, 제일 첫번째 SDK가 base SDK이고 나머지 SDK는 무조건 "spare"영역에 추가를 해야한다.

Architectures: 보통 지정하지 않으면 사전 정의된 빌드로 구성되며, 두개 이상의 architecture를 설정하면 범용 바이너리 파일로 만들어진다.

BASE SDK: 빌드를 실행할때 사용되는 기본적인 SDK, 이 base SDK의 경로는 기본적으로 컴파일러와 링커에의해 실행된다.

Build Active Architecture Only: 빌드전에 설정하게 되면 특정 architeure를 지정하지 않게 된다.



### 2. Assets

Embed Asset Packs In Product Bundle: 내장된 Asset(resourse: photo, music, video etc..)들을 관리 하는 설정, test시에 기능하지만 실제 출시시에는 surver랑 연결되지 않는다.



### 3.  Build Options

debug information format: 실행할때 디버깅 하는 정보를 설정

DWARF와  DWARF with dSYM File이 존재하는데 차이점은 후자는 xCode에서 디버깅이후 개별적인 object를 생성한다는 차이점이 존재한다.

Enable Testability: 설정이 활성화 되면 개인 인터페이스 접근과 같은 기능을 시험해 볼 수 있는 설정으로 빌드 된다. 이 설정은 enable을 시키지 않은 build보다 느리다.

Validate Built product:  활성화된 경우 빌드 프로세스의 일부로 제품에 대한 유효성 검사를 수행합니다.



### 4. Deployment

Installation directory:  빌드한 어플리케이션의 설치 경로

Strip Debug Symbols during Copy: 디버깅시에 복제되는 바이너리 파일의 디버깅 기호를 제거할지 결정하는 option, product의 target까지 제거 되지는 않는다

Strip Linked Product: 활성화된 경우 배포 후 처리를 수행할 때 빌드의 link된 product에서 symbol이 제거.

Targeted Device Families: build 시스템은 선택된 기기에 대해서 정확한 value를 set하기 때문에 설정 해야함

IOS Development Target: IOS 버전에 해당하는 code를 불러오게 만드는 역할, 최신 버전으로 설정시에는 이전의 코드의 null이나 weak-linked 상태를 확인해주어야 한다



### 5. Packing

info.plist file: 프로젝트의 상대경로로 info.plist file을 지정

Product name: 해당 target에서 사용될 product의 기본 이름



### 6. Search Path

Always Search User Paths(Deprecated) : Xcode 8.3이후 버전에서는 권장 하지 않으며, 만약 활성화를 하지 않는 다면 user path를 통한 헤더 파일 삽입은 #include "header.h" 와 같은 형식으로 삽입한다.



### 7. Apple Clang Options, Static Analyzer Options, Swift Compiler Options

search path이후의 option들은 주로 Clang이라는 애플에서 주도해서 개발한 컴파일러에 대한 옵션들을 설정할 수 있는 설정사항들이다. (LLVM이라는 컴파일러,JVM의 작동방식과 일부 유사)따라서 다양한 언어의 제약사항을 설정하는 것이 가능하게 도와준다.





## 3. <span style="color:green">Swift Packages</span>

외부 framework나 외부 API를 관리하는 항목으로서 URL Link의 형식 또는 Local 저장소에 있는 디렉토리를 가져와서 관리를 하게되는데, 이 때 swift Package는 Swift, Objective-C, Objective-C++, C, or C++ 와 같은 언어들로 구성된 코드를 불러오는 것이 가능한데 이는 바로 해당 코드들을 바이트 코드로 변환하여 불러오는 형식을 취하기 때문에 가능한 것이다.




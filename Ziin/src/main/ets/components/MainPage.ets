@Builder
export function PageOneBuilder() {
  MainPage()
}

@Component
export struct MainPage {
  @State message: string = 'Hello World';
  build() {
Column(){
  Text('我的')
}
  }
}

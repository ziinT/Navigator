@Builder
export  function homeBuilder(){
  home()
}
@Component
export  struct home{
  build() {
    Column(){
      Text('我的页面')
    }
  }
}
@Builder
export  function  fileBuilder(){
  file()
}
@Component
export  struct file{
  path:NavPathStack = new NavPathStack()//定义路由栈
  build() {
    Column(){
      Text('免费页面')

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Start)
  }
}
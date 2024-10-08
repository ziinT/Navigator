import {MainPage,file,home,shops,Login} from 'ziin'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  path:NavPathStack = new NavPathStack()//定义路由栈
  tabsContent : TabsController = new TabsController() //控制选项卡切换，类型是自带的
  @State index:number = 0
  build() {
 Navigation(this.path){
   Tabs({controller:this.tabsContent}){
     TabContent(){
     file({path:this.path})//展示数据

     }
     TabContent(){
       Login()
     }
     TabContent(){
       home()
     }
     TabContent(){
       shops()
     }
   }
   .barHeight(0)//消除tobs高度影响
 }
 .title('OA系统')
 .titleMode(NavigationTitleMode.Mini)//标题样式
 .hideTitleBar(true)//隐藏标题
 //下面那条栏，属于navigation
 .toolbarConfiguration([{
   value:'我的',
   icon:$r('app.media.gon'),
   action:()=>{
     this.index = 0
     this.tabsContent.changeIndex(0)//是0的时候选中的是这个选项卡
 }
 },
   {
     value:'登录',
     icon:$r('app.media.wx'),
     action:()=>{
       this.index = 1
       this.tabsContent.changeIndex(1)//是0的时候选中的是这个选项卡
     }
   },
   {
     value:'我的',
     icon:$r('app.media.man'),
     action:()=>{
       this.index = 2
       this.tabsContent.changeIndex(2)//是0的时候选中的是这个选项卡
     }
   }
   ,{
     value:'商品',
     icon:$r('app.media.youxiang'),
     activeIcon:$r('app.media.youxiang'),
     status:this.index==3?ToolbarItemStatus.ACTIVE:ToolbarItemStatus.NORMAL,//改变状态
     action:()=>{
       this.index = 3
       this.tabsContent.changeIndex(3)//是0的时候选中的是这个选项卡
     }
   }
   ])
  }
}
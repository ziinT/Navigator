@Builder
export function  LoginBuilder(){
  Login()
}
@Component
export  struct Login{
  build() {
    Column(){
      Text('登录页面')
    }
  }
}
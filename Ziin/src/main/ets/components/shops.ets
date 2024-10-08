@Builder
export  function shopsBuilder(){
  shops()
}
@Component
export  struct shops{
  build() {
    Column(){
      Text('商品页面')
    }
  }
}
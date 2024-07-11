@Entry
@Component
struct NumberState {

  // 当 @State 装饰的变量类型为 boolean 、 string 、 number 类型时，可以观察到赋值裱花
  @State count: number = 1

  build() {
    Column({space: 50}) {
      Row({space: 10}) {
        Text('@State')
          .textStyle()
        Counter() {
          Text(this.count.toString()).textStyle()
        }
        .onInc(() => {this.count++})
        .onDec(() => {this.count--})
      }
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor(Color.White)
    .padding(10)
  }
}

@Extend(Text)
function textStyle() {
  .fontSize(25)
  .fontWeight(FontWeight.Bold)
}
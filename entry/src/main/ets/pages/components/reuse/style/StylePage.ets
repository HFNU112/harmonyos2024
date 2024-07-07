@Entry
@Component
struct StylePage {
  build() {

    Column() {
      Row({ space: 50 }) {
        Button('确认')
          // .computeButtonStyle()
          .globalButtonStyle()
          .type(ButtonType.Normal)
          .backgroundColor(Color.Green)
          .onClick(() => {
            console.log('确认')
          })

        Button('取消')// .width(100)
          // .height(40)
          // .borderRadius(10)
          .computeButtonStyle()
          .type(ButtonType.Normal)
          .backgroundColor(Color.Gray)
          .onClick(() => {
            console.log('取消')
          })
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }

  //组件内的样式复用
  @Styles
  computeButtonStyle() {
    .width(100)
    .height(40)
    .borderRadius(10)
  }
}

// 全局在当前.ets文件内进行样式复用
@Styles
function globalButtonStyle() {
  .width(100)
  .height(40)
  .borderRadius(10)
}
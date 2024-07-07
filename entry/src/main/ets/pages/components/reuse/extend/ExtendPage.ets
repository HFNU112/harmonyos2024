@Entry
@Component
struct ExtendPage {
  build() {
    Column() {
      Row({ space: 50 }) {
        Button('确认')
          .extendButtonStyle(Color.Green, () => {
            console.log('确认')}
          )

        Button('取消')
          // .width(100)
          // .height(40)
          // .borderRadius(10)
          // .type(ButtonType.Normal)
          // .backgroundColor(Color.Gray)
          // .onClick(() => {
          //   console.log('取消')
          // })
          .extendButtonStyle(Color.Gray, () => {
            console.log('取消')}
          )
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}

// 全局定义指定类型组件样式复用
@Extend(Button)
function extendButtonStyle(color: Color, callback: () => void) {
  .width(100)
  .height(40)
  .borderRadius(10)
  .type(ButtonType.Normal)
  .backgroundColor(color)
  .onClick(callback)
}
// 声明组件语法说明
@Entry
@Component
struct DeleteButton {
  build() {
    Column() {
      // 组件名及参数 Button()
      Button() {
        Image('pages/delete/practice/image/DeleteButton.png')
          .width(50)
          .height(50)
      }
      // 属性方法
      .width(80)
      .height(80)
      .type(ButtonType.Circle)
      .backgroundColor(Color.Red)
      // 事件方法
      .onClick(() => {
        console.log('点击删除')
      })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}
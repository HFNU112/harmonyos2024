@Entry
@Component
struct ButtonParameter {
  build() {
    Column({ space: 50 }) {
      // 不包含子组件
      Button('按钮', { type: ButtonType.Capsule, stateEffect: true })
        .fontSize(25)
        .width(150)
        .height(60)

      // 包含子组件-

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}
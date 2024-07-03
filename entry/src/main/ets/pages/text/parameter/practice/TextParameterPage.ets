@Entry
@Component
struct TextParameterPage {

  build() {
    Column({space: 50}) {
      Text('你好，鸿蒙')
        .fontSize(50)
        .fontWeight("bolder")

      Text($r('app.string.greeting'))
        .fontSize(50)
        .fontWeight(FontWeight.Bolder)
        // .fontColor(Color.Blue)
        // .fontColor('rgb(0, 85,255)')
        .fontColor('#0055ff')
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)

  }
}
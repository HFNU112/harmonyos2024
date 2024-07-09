@Entry
@Component
struct AlignContentPage {

  build() {
    Column() {
      // 层叠布局
      Stack({alignContent: Alignment.BottomEnd}) {
        Image($r('app.media.icon_avatar'))
          .width('100%')
          .height('100%')
        Image($r('app.media.icon_v'))
          .width(60)
          .height(60)
          .position({x: 140, y: 140})
      }
      .width(200)
      .height(200)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }

}
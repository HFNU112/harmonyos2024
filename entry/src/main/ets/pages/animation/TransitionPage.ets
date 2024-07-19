@Entry
@Component
struct TransitionPage {
  @State flag: boolean = false

  build() {
    Column() {
      if (this.flag) {
        Image($r('app.media.demo'))
          .width(150)
          .height(150)
            // 透明度 opacity取值：[0, 1]
            //   .transition({type: TransitionType.All, opacity: 0.5})
            // 平移
            //   .transition({type: TransitionType.All, translate: {x: 50, y: 50}})
            // 缩放
            // .transition({ type: TransitionType.All, scale: { x: 0, y: 0 } })
            // 旋转
          .transition({
            type: TransitionType.All,
            opacity: 0.5,
            rotate: {
              x: 0,
              y: 0,
              z: 1,
              angle: 90,
              centerX: 0,
              centerY: 0
            }
          })
      }

      Blank()
      Row({ space: 50 }) {
        Button('消失')
          .backgroundColor(Color.Orange)
          .onClick(() => {
            animateTo({ duration: 500 }, () => {
              this.flag = false;
            })
          })

        Button('出现')
          .backgroundColor(Color.Green)
          .onClick(() => {
            animateTo({ duration: 500 }, () => {
              this.flag = true;
            })
          })
      }

    }
    .padding({ top: 200, bottom: 200 })
    .width('100%')
    .height('100%')
  }
}
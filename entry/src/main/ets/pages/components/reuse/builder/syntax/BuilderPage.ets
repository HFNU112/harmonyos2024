@Entry
@Component
struct BuilderPage {
  build() {
    Column() {
      Row({ space: 50 }) {
        // Button() {
        //   Row({space: 10}) {
        //     Image($r('app.media.icon_edit'))
        //       .width(25)
        //       .height(25)
        //     Text('编辑')
        //       .fontSize(25)
        //       .fontColor('#ffffff')
        //   }
        // }
        // .width(120)
        // .height(50)
        // .onClick(() => {
        //   console.log('编辑')
        // })
        // this.computeButtonBuilder($r('app.media.icon_edit'), '编辑', () => {
        //   console.log('编辑')
        // }
        // )
        globalButtonBuilder($r('app.media.icon_edit'), '编辑', () => {
          console.log('编辑')
        }
        )

        // Button() {
        //   Row({space: 10}) {
        //     Image($r('app.media.icon_send'))
        //       .width(25)
        //       .height(25)
        //     Text('发送')
        //       .fontSize(25)
        //       .fontColor('#ffffff')
        //   }
        // }
        // .width(120)
        // .height(50)
        // .onClick(() => {
        //   console.log('发送')
        // })
        // this.computeButtonBuilder($r('app.media.icon_send'), '发送', () => {
        //   console.log('发送')
        // }
        // )
        globalButtonBuilder($r('app.media.icon_send'), '发送', () => {
          console.log('发送')
        }
        )
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }

  // 组件内定义UI结构复用
  @Builder
  computeButtonBuilder(icon: Resource, text: string, callback: () => void) {
    Button() {
      Row({ space: 10 }) {
        Image(icon)
          .width(25)
          .height(25)
        Text(text)
          .fontSize(25)
          .fontColor('#ffffff')
      }
    }
    .width(120)
    .height(50)
    .onClick(callback)
  }
}

// 定义全局的UI结构复用
@Builder
export function globalButtonBuilder(icon: Resource, text: string, callback: () => void) {
  Button() {
    Row({ space: 10 }) {
      Image(icon)
        .width(25)
        .height(25)
      Text(text)
        .fontSize(25)
        .fontColor('#ffffff')
    }
  }
  .width(120)
  .height(50)
  .onClick(callback)
}
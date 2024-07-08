@Entry
@Component
struct BuilderParameterPage {
  @State count: number = 0

  build() {
    Column({ space: 50 }) {
      // 按值传递
      valueTextBuilder(this.count)
      // 按引用传递
      referenceTextBuilder({ count: this.count })

      Row({ space: 50 }) {
        Button('-1')
          .onClick(() => {
            this.count--
            console.log('count:' + this.count)
          })

        Button('+1')
          .onClick(() => {
            this.count++
            console.log('count:' + this.count)
          })
      }

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}

@Builder
function valueTextBuilder(count: number) {
  Text(`按值传递: ${count}`)
    .fontSize(30)
    .fontWeight(FontWeight.Bold)
}


interface GeneratedTypeLiteralInterface_1 {
  count: number;
}

@Builder
function referenceTextBuilder(obj: GeneratedTypeLiteralInterface_1) {
  Text(`按引用传递：${obj.count}`)
    .fontSize(30)
    .fontWeight(FontWeight.Bold)
}
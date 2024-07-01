@Entry
@Component
struct FruitPage {
  @State options: string[] = ["苹果", "桃⼦", "⾹蕉", "橘⼦"];
  @State answer: string = "______?"

  build() {

    Column({ space: 20 }) {
      Row() {
        Text("您最喜欢的水果是：")
          .fontSize(25)
          .fontWeight(FontWeight.Bolder)
        Text(this.answer)
          .fontSize(25)
          .fontColor(Color.Green)
          .fontWeight(FontWeight.Bolder)
      }

      ForEach(this.options, (item: string) => {
        Button(item)
          .width(100)
          .backgroundColor(Color.Green)
          .onClick(() => {
            this.answer = item
          })
      })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}

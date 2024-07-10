@Entry
@Component
struct AlignPage {
  @State data: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

  build() {
    List({ space: 20 }) {
      ForEach(this.data, (item: string) => {
        ListItem() {
          Text(item.toString())
            .itemTextStyle()
            .height(80)
            .width(320)
        }
      })
    }
    .listStyle()
    .width('100%')
    .height('100%')
    .alignListItem(ListItemAlign.Center)
  }
}

@Extend(Text)
function itemTextStyle() {
  .height(80)
  .width('100%')
  .textAlign(TextAlign.Center)
  .fontColor(Color.White)
  .fontSize(40)
  .fontWeight(FontWeight.Bold)
  .backgroundColor('#008a00')
  .borderRadius(10)
}

@Extend(List)
function listStyle() {
  .backgroundColor(Color.White)
  .padding(20)
}
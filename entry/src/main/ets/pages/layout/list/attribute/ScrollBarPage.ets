@Entry
@Component
struct ScrollBarPage {

  @State data: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

  build() {
    //列表布局
    List({space: 20}) {
      ForEach(this.data, (item: string) => {
        ListItem() {
          Text(item.toString())
            .width(320)
            .height(80)
            .itemTextStyle()
        }
      })
    }
    .listStyle()
    .width('100%')
    .height('100%')
    .alignListItem(ListItemAlign.Center)
    .scrollBar(BarState.Auto)
  }

}

@Extend(Text)
function itemTextStyle() {
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
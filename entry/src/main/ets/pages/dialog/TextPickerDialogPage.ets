@Entry
@Component
struct TextPickerDialogPage {
  fruits: string[] = ['苹果', '香蕉', '橘子', '鸭梨', '西瓜']
  @State selectedIndex: number | number[] = 0

  build() {
    Column({ space: 50 }) {
      Text(this.fruits[this.selectedIndex.toString()])
        .fontColor(Color.Black)
        .fontWeight(FontWeight.Bold)
        .fontSize(30)

      Button('选择文本')
        .margin(20)
        .onClick(() => {
          TextPickerDialog.show({
            range: this.fruits,
            selected: this.selectedIndex,
            onAccept: (value: TextPickerResult) => {
              this.selectedIndex = value.index
            },
            onCancel: () => {
              console.info('取消选择')
            },
            onChange: (value: TextPickerResult) => {
              console.info('当前文本：', JSON.stringify(value))
            }
          })
        })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}
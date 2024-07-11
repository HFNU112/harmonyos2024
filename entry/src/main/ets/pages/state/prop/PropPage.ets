@Entry
@Component
struct Parent {

  @State count: number = 1

  build() {
    Column() {
      Column({space: 10}) {
        Text('父组件')
          .textStyle()
        Row() {
          Text('@State')
            .textStyle()
          Counter() {
            Text(this.count.toString()).textStyle()
          }
          .onInc(() => {
            this.count++
          })
          .onDec(() => {
            this.count--
          })
        }

        // 子组件
        Child({count: this.count})
      }
      .containerStyle('#EFEFEF')
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor(Color.White)
    .padding(10)
  }
}

@Component
struct Child {

  @Prop count: number

  build() {
    Column({space: 10}) {
      Text('子组件')
        .textStyle()
      Row({space: 10}) {
        Text('@Prop')
          .textStyle()
        Counter() {
          Text(this.count.toString()).textStyle()
        }
        .onInc(() => {this.count++})
        .onDec(() => {this.count--})
      }
    }
    .containerStyle('#CCE3CB')
  }
}

@Extend(Text)
function textStyle() {
  .fontSize(25)
  .fontWeight(FontWeight.Bold)
}

@Extend(Column)
function containerStyle(color: ResourceColor) {
  .width('100%')
  .backgroundColor(color)
  .padding(10)
  .borderRadius(20)
}
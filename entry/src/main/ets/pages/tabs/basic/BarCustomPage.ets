@Entry
@Component
struct BarCustomPage {
  @State currentIndex:number = 0

  build() {
    // 导航标签组件
    Tabs() {
      TabContent() {
        Text('首页内容')
      }
      .tabBar(this.barBuilder(0, $r('app.media.icon_home'), '首页', $r('app.media.icon_home_selected')))

      TabContent() {
        Text('消息')
      }
      .tabBar(this.barBuilder(1, $r('app.media.icon_message'), '消息', $r('app.media.icon_message_selected')))

      TabContent() {
        Text('我的')
      }
      .tabBar(this.barBuilder(2, $r('app.media.icon_mine'), '我的', $r('app.media.icon_mine_selected')))
    }
    .vertical(false)
    .barPosition(BarPosition.End)
    .onChange((index) => {
      this.currentIndex = index
    })
  }

  @Builder
  barBuilder(index:number, icon: Resource, title: string, iconSelected: Resource){
    Column() {
      Image(this.currentIndex === index ? iconSelected : icon)
        .width(25)
        .height(25)
      Text(title)
        .fontColor(this.currentIndex === index ? '#0491d1' : '#8a8a8a')
        .fontWeight(FontWeight.Medium)
    }
  }

}
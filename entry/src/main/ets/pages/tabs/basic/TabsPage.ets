@Entry
@Component
struct TabsPage {

  build() {
    // 导航标签组件
    Tabs() {
      TabContent() {
        Text('首页内容')
      }
      .tabBar('首页')

      TabContent() {
        Text('发现社群')
      }
      .tabBar('发现')

      TabContent() {
        Text('我的信息')
      }
      .tabBar('我的')
    }
    .vertical(false)
    .barPosition(BarPosition.Start)
    .barMode(BarMode.Fixed)
  }

}
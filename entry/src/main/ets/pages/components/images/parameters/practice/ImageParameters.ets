@Entry
@Component
struct ImageParameters {

  build() {
    Column({ space: 40 }) {
      // 本地图片 位于/etc目录下 图片尺寸
      Image('pages/components/images/parameters/practice/image/demo.png')
        .width(150)
        .height(150)

      // 网络图片
      Image('https://image.uc.cn/o/wemedia/s/upload/2020/ueqVqS1e6iov6ik/d897eb6eff96401ec457212eed683c96.png;,3,jpegx;3,310x')
        .width(150)
        .height(150)

      // 本地图片 位于/resource/*/media目录
      Image($r('app.media.demo'))
        .width('150px')
        .height('150px')

      // 本地图片 位于/resources/rawfile目录下
      Image($rawfile ('demo.png'))
        .width('150vp')
        .height('150vp')
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}
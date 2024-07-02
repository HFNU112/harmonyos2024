@Entry
@Component
struct ImageObjectFit {
  build() {
    Column({ space: 20 }) {

      Column() {
        Image($r('app.media.demo'))
          .width('200px')
          .height('200px')
        Text('原图')
      }

      Row({ space: 20 }) {
        Column() {
          Image($r('app.media.demo'))
            .width('450px')
            .height('450px')
            .borderWidth(1)
            .objectFit(ImageFit.None)
          Text('None')
        }

        Column() {
          Image($r('app.media.demo'))
            .width('450px')
            .height('450px')
            .borderWidth(1)
            .objectFit(ImageFit.Contain)
          Text('Contain')
        }
      }

      Row({ space: 20 }) {
        Column() {
          Image($r('app.media.demo'))
            .width('450px')
            .height('450px')
            .borderWidth(1)
            .objectFit(ImageFit.Cover)
          Text('Cover')
        }

        Column() {
          Image($r('app.media.demo'))
            .width('450px')
            .height('450px')
            .borderWidth(1)
            .objectFit(ImageFit.Fill)
          Text('Fill')
        }

      }

      Row({ space: 20 }) {
        Column() {
          Image($r('app.media.demo'))
            .width('450px')
            .height('450px')
            .borderWidth(1)
            .objectFit(ImageFit.ScaleDown)
          Text('ScaleDown')
        }

        Column() {
          Image($r('app.media.demo'))
            .width('450px')
            .height('450px')
            .borderWidth(1)
            .objectFit(ImageFit.Auto)
          Text('Auto')
        }
      }

    }

  }
}
@Entry
@Component
struct ToggleParameter {
  build() {
    Column({ space: 20 }) {

      Row({ space: 20 }) {
        Toggle({ type: ToggleType.Switch, isOn: false })
          .selectedColor(Color.Green)
          .switchPointColor('rgb(255, 255, 255)')
        Toggle({ type: ToggleType.Switch, isOn: true })
          .selectedColor(Color.Green)
          .switchPointColor(Color.Orange)
      }

      Row({ space: 20 }) {
        Toggle({ type: ToggleType.Checkbox, isOn: false })
        Toggle({ type: ToggleType.Checkbox, isOn: true })
          .selectedColor(Color.Green)
      }

      Row({ space: 20 }) {
        Toggle({ type: ToggleType.Button, isOn: false }) {
          Text('button')
        }
        .selectedColor('#00c800')

        Toggle({ type: ToggleType.Button, isOn: true }) {
          Text('button')
        }
        .selectedColor('#00c800')
      }

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}
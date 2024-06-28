// 自定义组件
import { SwitchButton } from './SwitchButton';

@Entry
@Component
struct LightPage {
  @State isOn: boolean = false;

  build() {
    Column({ space: 20 }) {
      if (this.isOn) {
        //亮灯状态
        Image('pages/customer/practice/image/On.png')
          .height(300)
          .width(300)
          .borderRadius(50)
      } else {
        //熄灯状态
        Image('pages/customer/practice/image/Off.png')
          .height(300)
          .width(300)
          .borderRadius(50)
      }
      Row({ space: 50 }) {

        // 自定义组件参数
        SwitchButton({ color: Color.Red })
          .onClick(() => {
            this.isOn = false
          })

        SwitchButton({ color: Color.Green })
          .onClick(() => {
            this.isOn = true
          })
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}

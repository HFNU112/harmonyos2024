@Component
export struct SwitchButton {
  color: Color = Color.Blue

  build() {
    Button({ type: ButtonType.Circle }) {
      Image('pages/customer/practice/image/switch.png')
        .width(35)
        .height(35)
    }
    .width(50)
    .height(50)
    .backgroundColor(this.color)
  }
}
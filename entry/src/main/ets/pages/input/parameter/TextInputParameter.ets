@Entry
@Component
struct TextInputParameter {

  build() {
    Column({space: 50}) {

      Column({space: 10}) {
        Text('输入框类型')
        TextInput({placeholder: '请输入内容~'})
          .width('70%')
          .type(InputType.Normal)

        TextInput({text: '文本内容'})
          .width('70%')

        TextInput({placeholder: '请输入数字'})
          .width('70%')
          .type(InputType.Number)

        TextInput({placeholder: '请输入密码'})
          .width('70%')
          .type(InputType.Password)
      }

      Column({space: 10}){
        Text('光标样式')
        TextInput()
          .caretColor('#f91d28')
      }

      TextInput({placeholder: '请输入用户名'})
        .width('70%')
        .type(InputType.Normal)
        .onChange((value) => {
          console.log(`用户名：${value}`)
        })
        .onFocus(() => {
          console.log('用户名输入框获得焦点')
        })
        .onBlur(() => {
          console.log('用户名输入框失去焦点')
        })

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }

}
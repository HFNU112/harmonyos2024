import { Person } from './model/PersonModel'

@Component
export struct ContactItem {
  @ObjectLink person: Person
  @State isExpand: boolean = false
  @Link @Watch('onCountChange') currentExpandId: number
  //选择模式切换
  @Prop isSelectMode: boolean
  @Link selectedIdList: number[]

  //监听当前展开联系人
  onCountChange() {
    if (this.currentExpandId != this.person.id) {
      this.isExpand = false
    }
  }

  build() {
    Column() {
      Row({ space: 10 }) {
        // 复选框
        if (this.isSelectMode) {
          Toggle({ type: ToggleType.Checkbox })
            .onChange((value) => {
              if (value) {
                this.selectedIdList.push(this.person.id)
              } else {
                let index = this.selectedIdList.indexOf(this.person.id)
                this.selectedIdList.splice(index, 1)
              }
            })
        }

        // 头像
        Image($r('app.media.img_user_avatar'))
          .width(40)
          .height(40)
        //姓名
        Text(this.person.name)
          .fontSize(20)
          .fontWeight(500)
        Blank()
        //收藏
        //父子组件观察数组类型的嵌套属性值@ObjectLink ~ @Observed
        Image(this.person.isStar ? $r('app.media.ic_star_filled') : $r('app.media.ic_star_empty'))
          .width(30)
          .height(30)
          .onClick(() => {
            this.person.isStar = !this.person.isStar
          })
      }
      .backgroundColor(Color.White)
      .padding(10)
      .borderRadius(10)
      .width('100%')
      .height(70)

      if (this.isExpand) {
        Divider()
        Text(`手机号码   ${this.person.phone}`)
          .width('100%')
          .height(50)
      }
    }
    .backgroundColor(Color.White)
    .padding(10)
    .borderRadius(10)
    .onClick(() => {
      this.isExpand = !this.isExpand
      this.currentExpandId = this.person.id
    })
  }
}
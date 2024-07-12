/**
 * 需求：实现的是⼀个通讯录（联系⼈列表），需要⽀持
 * 添加联系⼈、批量删除联系⼈、收藏联系⼈等功能
 *
 * 任务：
 * 1、阅读初始化布局代码
 * 2、要求点击新增按钮（ + ）时，添加⼀名随机联系⼈。
 * 3、五⻆星为收藏按钮，空⼼代表未收藏，实⼼代表已收藏，具体效果如下，要求可以在收藏和未收藏之间切换
 * 4、点击联系⼈时，相应联系⼈展开并显示详细信息（⼿机号码），再次点击收起详细信息
 * 5、要求同⼀时刻只能有⼀个联系⼈信息展开，也就是在展开⼀个联系⼈的同时，需要收起其他联系⼈。
 * 6、为实现批量删除的功能，需先实现多选功能。要求点击 选择 按钮时，进⼊选择模式
 * 7、在完成多选操作后，点击删除按钮，需要将选中的联系⼈从 persons 数组中移除。*
 */
import { getRandomName, getRandomPhone } from '../../../../util/RandomUtil'
import { ContactItem } from './ContactItem'
import { Person } from './model/PersonModel'

@Entry
@Component
struct ContactList {

  @State persons: Person[] = [new Person(getRandomName(), getRandomPhone())]

  //当前展开的联系人id
  @State currentExpandId: number = -1

  //选择模式 普通/选择
  @State isSelectMode: boolean = false

  @State selectedIdList: number[] = []

  build() {
    Column() {
      //标题
      Row({ space: 10 }) {
        Text('联系人')
          .titleStyle()
        Blank()
        Button(this.isSelectMode ? '取消' : '选择')
          .buttonStyles(Color.Gray)
          .onClick(() => {
            this.isSelectMode = !this.isSelectMode
            this.selectedIdList = []
          })
        Button('+')
          .buttonStyles(Color.Gray)
          // 新增元素 向数组中push元素
          .onClick(() => {this.persons.push(new Person(getRandomName(), getRandomPhone()))})
      }
      .width('100%')
      .height(60)

      //列表布局组件
      List({ space: 10 }) {
        ForEach(this.persons, (person: Person) => {
          ListItem() {
            // 联系人
            ContactItem({
              person: person,
              currentExpandId: $currentExpandId,
              isSelectMode: this.isSelectMode,
              selectedIdList: $selectedIdList
            })
          }
        })
      }
      .width('100%')
      .layoutWeight(1)

      //删除按钮
      if (this.isSelectMode) {
        Button('删除')
          .buttonStyles(Color.Red)
          .margin({ top: 10 })
          .onClick(() => {
            this.persons = this.persons.filter(person => this.selectedIdList.includes(person.id))
          })
      }

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#EFEFEF')
    .padding(10)
  }
}

@Extend(Text)
function titleStyle() {
  .fontSize(30)
  .fontWeight(500)
}

@Extend(Button)
function buttonStyles(color: ResourceColor) {
  .height(30)
  .backgroundColor(color)
}
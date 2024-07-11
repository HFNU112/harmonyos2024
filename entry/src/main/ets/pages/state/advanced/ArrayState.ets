import { getRandomAge, getRandomName } from '../../../util/RandomUtil'
import { Person } from './model/PersonModel'

@Entry
@Component
struct ArrayState {

  //@State 装饰的变量类型为数组时，可以观察到数组本身增加、删除等变化，数组内嵌套属性值发生变化但是页面不刷新
  @State persons: Person[] = [new Person('husp', 18), new Person('xh', 20)]

  build() {
    Column() {
      Row() {
        Text('用户信息').textStyle()
      }
      .height(60)
      .width('100%')

      List({space: 10}) {
        ForEach(this.persons, (person: Person) => {
          ListItem() {
            Column({space: 10}) {
              Row({space: 20}) {
                Text('姓名')
                  .textStyle()
                Text(person.name).textStyle()
              }
              Row({space: 20}) {
                Text('年龄')
                  .textStyle()
                Counter() {
                  Text(person.age.toString()).textStyle()
                }
                .onInc(() => {
                  person.age += 2
                  console.log(person.age.toString())
                })
                .onDec(() => {
                  person.age -= 2
                  console.log(person.age.toString())
                })
              }
            }.itemStyle()
          }
        })
      }.layoutWeight(1)

      Row({space: 50}) {
        Button('添加')
          .backgroundColor('#00aa00')
          .onClick(() => {
            this.persons.push(new Person(getRandomName(), getRandomAge()))
          })

        Button('清空')
          .backgroundColor(Color.Gray)
          .onClick(() => {
            this.persons = []
          })
      }
      .height(60)
      .width('100%')
      .justifyContent(FlexAlign.Center)
    }
    .width('100%')
    .height('100%')
    .padding(10)
    .backgroundColor('#EBEBEB')
  }
}

@Extend(Text)
function textStyle() {
  .fontSize(20)
  .fontWeight(500)
}

@Extend(Column)
function itemStyle() {
  .padding(20)
  .width('100%')
  .borderRadius(10)
  .alignItems(HorizontalAlign.Start)
  .justifyContent(FlexAlign.Center)
  .backgroundColor(Color.White)
}
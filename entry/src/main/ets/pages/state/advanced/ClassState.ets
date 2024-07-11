import { Employee, Job } from './model/EmployeeModel'

@Entry
@Component
struct ClassState {

  // @State 装饰的变量类型为class或者object时, 观察自身属性赋值变化，嵌套的属性值变化页面不刷新，但是嵌套的属性值发生变化
  @State employee: Employee = new Employee('xiaohu', 20, new Job('研发', 10000))

  build() {
    Column() {
      Column({space: 20}) {
        Row({space: 20}) {
          Text('姓名')
            .textStyle()
          Text(this.employee.name).textStyle()
        }

        Row({space: 20}) {
          Text('年龄')
            .textStyle()
          Counter() {
            Text(this.employee.age.toString()).textStyle()
          }
          .onInc(() => {this.employee.age += 2})
          .onDec(() => {this.employee.age -= 2})
        }

        Row({space: 20}) {
          Text('岗位')
            .textStyle()
          Column({space: 10}) {
            Row({space: 20}) {
              Text('名称')
                .textStyle()
              Text(this.employee.job.name).textStyle()
            }

            Row({space: 20}) {
              Text('薪资').textStyle()
              Counter() {
                Text(this.employee.job.salary.toString()).textStyle()
              }
              .width(140)
              .onInc(() => {
                this.employee.job.salary += 10
                console.log('变化后：' + this.employee.job.salary.toString())
              })
              .onDec(() => {
                this.employee.job.salary -= 10
                console.log('变化后：' + this.employee.job.salary.toString())
              })
            }
          }
        }

      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#E9E9EA')
    .padding(10)
    .justifyContent(FlexAlign.Center)
  }
}

@Extend(Text)
function textStyle() {
  .fontSize(25)
  .fontWeight(FontWeight.Bold)
}
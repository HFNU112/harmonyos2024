import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct ToastPage {

  build() {
    Column({space: 20}) {
      Row({space: 20}) {
        Button('提示信息')
          .onClick(() => {
            promptAction.showToast({
              message: '网络已断开',
              duration: 2000,
              bottom: 50
            })
          })
      }

      Row({space: 20}) {
        Button('删除')
          .backgroundColor('#f51c27')
          .onClick(() => {
            AlertDialog.show({
              title: '删除该标题',
              message: '删除后无法恢复，你确定要删除么？',
              autoCancel: true,
              alignment: DialogAlignment.Bottom,
              offset: {dx: 0, dy: -20},
              primaryButton: {
                value: '确认',
                fontColor: 'rgb(253, 29, 41)',
                action: () => {
                  console.log('确认删除')
                }
              },

              secondaryButton: {
                value: '取消',
                fontColor: '#56b3ed',
                action: () => {
                  console.log('取消删除')
                }
              },

              cancel: () => {
                console.log('Closed callback')
              }

            })
          })
      }

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }

}
@Entry
@Component
struct ActionSheetPage {
  build() {

    Column({ space: 20 }) {
      Button('选择操作')
        .onClick(() => {
          ActionSheet.show({
            title: '文件操作',
            message: '请选择你对该文件执行的操作',
            autoCancel: true,
            alignment: DialogAlignment.Bottom,
            offset: { dx: 0, dy: -20 },
            confirm: {
              value: '取消',
              action: () => {
                console.log('点击按钮取消')
              }
            },
            cancel: () => {
              console.log('Closed callback')
            },

            sheets: [
              {
                icon: $r('app.media.icon_copy'),
                title: '复制',
                action: () => {
                  console.log('复制文件')
                }
              },
              {
                icon: $r('app.media.icon_cut'),
                title: '剪切',
                action: () => {
                  console.log('剪切文件')
                }
              },
              {
                icon: $r('app.media.icon_delete'),
                title: '删除',
                action: () => {
                  console.log('删除文件')
                }
              }
            ]
          })
        })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}
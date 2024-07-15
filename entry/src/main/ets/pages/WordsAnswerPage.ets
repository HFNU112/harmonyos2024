import { AnswerEnum } from '../enums/AnswerEnum'
import { AnswerStatus } from '../enums/AnswerStatusEnum'
import { getRandomQuestion, Questions } from '../model/Questions'
import { promptAction } from '@kit.ArkUI'
import { OptionsStatus } from '../enums/OptionsStatus'

@Entry
@Component
struct WordsAnswerPage {
  @State answerStatus: AnswerStatus = AnswerStatus.Stopped
  @State questions: Questions[] = getRandomQuestion(3)
  @State currentIndex: number = 0
  @State answer: AnswerEnum = AnswerEnum.answering

  startPractice() {
    //1、修改状态变量
    this.answerStatus = AnswerStatus.Running
    //TODO 2、启动计时器
  }

  PausePractice() {
    //1、修改状态变量
    this.answerStatus = AnswerStatus.Paused
    //TODO 2、暂停计时器
  }

  stopPractice() {
    //1、修改状态变量
    this.answerStatus = AnswerStatus.Stopped
    //TODO 2、停止计时器

    //TODO 3、停止弹窗

  }

  build() {
    Column() {
      // 统计面板
      Column() {
        Text('统计信息')
        Text('统计信息')
        Text('统计信息')
        Text('统计信息')
      }.statBgStyle()

      // 题目
      Column() {
        Text(this.questions[this.currentIndex].word)
          .wordStyle()
        Text(this.questions[this.currentIndex].sentence)
          .sentenceStyle()
      }

      // 选项
      Column({ space: 10 }) {
        ForEach(this.questions[this.currentIndex].option, (option: string) => {
          OptionButton({option: option})
            .enabled(this.answer === AnswerEnum.answering)
            .onClick(() => {
              // 判断练习状态
              if (this.answerStatus !== AnswerStatus.Running) {
                promptAction.showToast({ message: '请先点击开始测试' })
                return
              }

              // TODO 判断正误

              // TODO 统计答题信息

              // 切换题目
              this.answer = AnswerEnum.answered
              if (this.currentIndex < this.questions.length - 1) {
                setTimeout(() => {
                  this.currentIndex++
                  this.answer = AnswerEnum.answering
                }, 1000)
              } else {
                this.stopPractice()
              }
            })
        })
      }

      // 控制按钮
      Row({ space: 50 }) {
        Button('停止测试')
          .controlButtonStyle({
            bg: Color.Transparent,
            border: this.answerStatus === AnswerStatus.Stopped ? Color.Gray : Color.Black,
            font: this.answerStatus === AnswerStatus.Stopped ? Color.Gray : Color.Black
          })
          .enabled(this.answerStatus !== AnswerStatus.Stopped)
          .onClick(() => {
            // 停止测试
            this.stopPractice()
          })
        Button(this.answerStatus === AnswerStatus.Running ? '暂停测试' : '开始测试')
          .controlButtonStyle({
            bg: this.answerStatus === AnswerStatus.Running ? '#555555' : Color.Black,
            border: this.answerStatus === AnswerStatus.Running ? '#555555' : Color.Black,
            font: Color.White
          })
          .stateEffect(false)
          .onClick(() => {
            if (this.answerStatus === AnswerStatus.Running) {
              // 暂停测试
              this.PausePractice()
            } else {
              // 开始测试
              this.startPractice()
            }
          })
      }

    }.answerBgStyle()
  }
}

@Component
struct OptionButton {
  option: string=''
  @State optionStatus: OptionsStatus = OptionsStatus.default

  getBgColor(){
    switch (this.optionStatus) {
      case OptionsStatus.right:
        return '#00c500'
      case OptionsStatus.error:
        return '#ee1c26'
      default :
      return '#fdfdfd'
    }
  }

  build() {
    Stack() {
      Button(this.option)
        .optionsButtonStyle({
          bg: this.getBgColor(),
          font: (this.optionStatus === OptionsStatus.default) ? '#060606' : '#fdfdfd'
        })

      if (this.optionStatus === OptionsStatus.right) {
        Image($r('app.media.ic_right'))
          .width(22)
          .height(22)
          .offset({x:10})
      }else if (this.optionStatus === OptionsStatus.error) {
        Image($r('app.media.ic_wrong'))
          .width(22)
          .height(22)
          .offset({x:10})
      }
    }
    .alignContent(Alignment.Start)

  }
}

@Extend(Column)
function answerBgStyle() {
  .width('100%')
  .height('100%')
  .backgroundImage($r('app.media.img_practice_bg'))
  .backgroundImageSize({ width: '100%', height: '100%' })
  .justifyContent(FlexAlign.SpaceEvenly)
}

@Styles
function statBgStyle() {
  .backgroundColor(Color.White)
  .width('90%')
  .borderRadius(10)
  .padding(20)
}

@Extend(Text)
function wordStyle() {
  .fontSize(50)
  .fontWeight(FontWeight.Bold)
}

@Extend(Text)
function sentenceStyle() {
  .width('80%')
  .height(40)
  .fontColor('#9ba1a5')
  .fontWeight(FontWeight.Medium)
  .textAlign(TextAlign.Center)
}

interface GeneratedTypeLiteralInterface_color {
  bg: ResourceColor;
  font: ResourceColor;
}

@Extend(Button)
function optionsButtonStyle(color: GeneratedTypeLiteralInterface_color) {
  .width(240)
  .height(40)
  .fontSize(16)
  .type(ButtonType.Normal)
  .fontWeight(FontWeight.Medium)
  .borderRadius(8)
  .backgroundColor(color.bg)
  .fontColor(color.font)
}

interface GeneratedTypeLiteralInterface_controlButton {
  bg: ResourceColor;
  border: ResourceColor;
  font: ResourceColor;
}

@Extend(Button)
function controlButtonStyle(color: GeneratedTypeLiteralInterface_controlButton) {
  .fontSize(16)
  .borderWidth(1)
  .backgroundColor(color.bg)
  .borderColor(color.border)
  .fontColor(color.font)
}
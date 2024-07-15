export interface Questions {
  word: string // 单词
  sentence: string // 例句
  option: string[] //选项
  answer: string // 答案
}

export const questionData: Questions[] = [
  {
    word: 'persist',
    option: ['adj. 圆形的，环形的', 'v.坚持；执意，执着', 'v. 俘虏，捕获', 'n. 幻想；错觉'],
    answer: 'v.坚持；执意，执着',
    sentence: 'The cold weather will persist for the rest of the week.'
  },
  {
    word: 'circular',
    option: ['adj. 圆形的，环形的', 'v.坚持；执意，执着', 'v. 俘虏，捕获', 'n. 幻想；错觉'],
    answer: 'adj. 圆形的，环形的',
    sentence: 'He took a circular route to the office.'
  },
  {
    word: 'capture',
    option: ['adj. 圆形的，环形的', 'v.坚持；执意，执着', 'v. 俘虏，捕获', 'n. 幻想；错觉'],
    answer: 'v. 俘虏，捕获',
    sentence: 'He was captured by the enemy during the battle.'
  },
  {
    word: 'illusion',
    option: ['adj. 圆形的，环形的', 'n. 幻想；错觉', 'v.坚持；执意，执着', 'v. 俘虏，捕获'],
    answer: 'n. 幻想；错觉',
    sentence: 'He could no longer distinguish between illusion and reality.'
  },
  {
    word: 'orbit',
    option: ['adj. 圆形的，环形的', 'n. 幻想；错觉', 'v.坚持；执意，执着', 'n. （天体运行的）轨道'],
    answer: 'n. （天体运行的）轨道',
    sentence: 'The satellite was put into the orbit around the earth.'
  }
]

export function getRandomQuestion(count: number) {
  let length = questionData.length

  let indexes: number[] = []
  while (indexes.length < count) {
    let index = Math.floor(Math.random() * length)
    if (!indexes.includes(index)) {
      indexes.push(index)
    }
  }
  return indexes.map(index => questionData[index])
}
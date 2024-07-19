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
    option: ['v. 俘虏，捕获', 'v.坚持；执意，执着', 'adj. 圆形的，环形的', 'n. 幻想；错觉'],
    answer: 'adj. 圆形的，环形的',
    sentence: 'He took a circular route to the office.'
  },
  {
    word: 'capture',
    option: ['v.坚持', 'n. 幻想；错觉', 'v. 俘虏', 'adj. 圆形的，环形的'],
    answer: 'v. 俘虏，捕获',
    sentence: 'He was captured by the enemy during the battle.'
  },
  {
    word: 'illusion',
    option: ['n. 幻想；错觉', 'v. 执意，执着', 'v. 俘虏，捕获', 'n. （天体运行的）轨道'],
    answer: 'n. 幻想；错觉',
    sentence: 'He could no longer distinguish between illusion and reality.'
  },
  {
    word: 'orbit',
    option: ['adj. 圆形的，环形的', 'v. 俘虏，捕获', 'v. 执意，执着', 'n. （天体运行的）轨道'],
    answer: 'n. （天体运行的）轨道',
    sentence: 'The satellite was put into the orbit around the earth.'
  },
  {
    word: 'oval',
    option: ['v. 同时发生', 'n. 地平线；眼界', 'n. （天体运行的）轨道', 'adj. 椭圆形的，卵形的'],
    answer: 'adj. 椭圆形的，卵形的',
    sentence: 'Comets move around the sun in a long oval course.'
  },
  {
    word: 'enormous',
    option: ['adj. 椭圆形的，卵形的', 'adj. 巨大的，庞大的', 'v. 同时发生', 'n. （天体运行的）轨道'],
    answer: 'adj. 巨大的，庞大的',
    sentence: 'The task has taken the team an enormous amount of time.'
  },
  {
    word: 'coincide',
    option: ['v. 同时发生', 'adj. 巨大的，庞大的', 'n. 地平线；眼界', 'adj. 椭圆形的，卵形的'],
    answer: 'v. 同时发生',
    sentence: 'They did not coincide in opinion'
  },
  {
    word: 'horizon',
    option: ['adv. 仅仅，勉强', 'v. 同时发生', 'n. 地平线；眼界', 'adj. 巨大的，庞大的'],
    answer: 'n. 地平线；眼界',
    sentence: 'The sun sank below the horizon.'
  },
  {
    word: 'barely',
    option: ['n. 地平线；眼界', 'adv. 仅仅，勉强', 'v. 同时发生', 'adj. 巨大的，庞大的'],
    answer: 'adv. 仅仅，勉强',
    sentence: 'She was barely recognizable as the girl I had known at school.'
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
// 可选参数通过参数名后的 ? 标识, 默认参数gender: string = 'male'指定默认值
function getPersonInfo(name: string, age?: number, gender: string = 'male'): string {
    if (gender === undefined) {
        gender = '未知'
    }
    return `name:${name},age:${age},gender:${gender}`;
}

let person1 = getPersonInfo('dapeng', 18);
let person2 = getPersonInfo('dapeng');
console.log(person1);
console.log(person2);

// 联合类型
function printNumberOrString(message: number | string | boolean) {
    console.log(message)
}
printNumberOrString('abc')
printNumberOrString(123)
printNumberOrString(true)

// 任意类型的值
function print(message: any) {
    console.log(message)
}
print(123)
print('abc')
print('2024-06-27')

// 函数的返回值类型可根据函数内容推断
function sum(a: number, b: number) {
    return a + b;
}

console.log(typeof sum(2, 3));

// 匿名函数
let arr: number[] = [1, 2, 3, 4, 5]
arr.forEach(numbers)
function numbers(item: number) {
    console.log(item)
}

// 箭头函数
let arr2: number[] = [1, 2, 3, 4, 5]
arr2.forEach((item) => {
    console.log(item);
})

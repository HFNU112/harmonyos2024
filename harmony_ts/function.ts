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

// 根据初始值进⾏类型推断
const count = 60
console.log(typeof count);

let str1 = "hello"
console.log(typeof str1);

let str2 = '你好'
console.log(typeof str2);

// 数组类型
let arr:number[] = [1,2,3,4,5]
console.log(arr[0]);

//对象类型的变量
let person:{name:string, age:number, enable:boolean} = {
    name:'大鹏',
    age:18,
    enable:true
}
console.log(person.name);

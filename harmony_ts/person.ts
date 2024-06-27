class Person {
    id: string;
    name: string;
    age: number = 18;
    constructor(id: string, name: string) {
        this.id = id;
        this.name = name;
    }
    introduce(): string {
        return `hello,I am ${this.name},and I am ${this.age} years old`
    }
}

let p = new Person('1', 'zhangsan')
console.log(p.name);
console.log(p.introduce());


class Constants {
    static count: number = 1;
}
class Utils {
    static toLowerCase(str: string) {
        return str.toLowerCase();
    }
}

console.log(Constants.count);
console.log(Utils.toLowerCase('HELLO WORLD'));

// 继承
class Student extends Person {
    classNumber: string;
    constructor(id: string, name: string, classNumber: string) {
        super(id, name);
        this.classNumber = classNumber;
    }
    introduce(): string {
        return super.introduce() + `, and I am a student`;
    }
}

console.log(new Student('2', 'lisi', '1').introduce());

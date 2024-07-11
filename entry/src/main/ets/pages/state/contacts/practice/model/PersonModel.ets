let nextId = 1;

export class Person {

  id: number; //编号

  name: string; //姓名

  phone: string; //⼿机号码

  isStar: boolean = false; //是否收藏

  constructor(name: string, phone: string) {
    this.id = nextId++;
    this.name = name;
    this.phone = phone;
  }

}
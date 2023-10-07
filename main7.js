// 定数animalを定義してください
const animal = {
    name:"レオ",
    age:3,
    greet:() => {
      console.log("こんにちは");
    }
  }
  
  // animalのnameプロパティの値を出力してください
  console.log(animal.name);
  
  // animalのgreetプロパティの関数を実行してください
  animal.greet();
  
  // Animalクラスを定義してください
class Animal{
  
}

class Animal {
}

// Animalクラスのインスタンスを定数animalに代入してください
const animal = new Animal();

// 定数animalの値を出力してください
console.log(animal);


class Animal {
    // コンストラクタを追加してください
    constructor(){
      console.log("インスタンスを生成しました");
    }
    
  }
  


  const animal = new Animal();
  
  class Animal {
    constructor() {
      // nameの値に文字列「レオ」を代入してください
      this.name = "レオ";
      
      // ageの値に数値の「3」を代入してください
      this.age = 3;
    }
  }
  
  const animal = new Animal();
  
  // 「名前: 〇〇」となるように出力してください
  console.log(`名前：${animal.name}`);
  
  // 「年齢: 〇〇」となるように出力してください
  console.log(`年齢：${animal.age}`);
  
  




        //コンストラクターの書き換え可能にするため
class Animal {
  // 引数に「name」と「age」を追加してください
  constructor(name,age) {
    // 「"レオ"」の代わりに引数nameの値を代入してください
    this.name = name;
    
    // 「3」の代わりに引数ageの値を代入してください
    this.age = age;
  }
}

// 引数に「"モカ"」と「8」を渡してください
const animal = new Animal("モカ",8);

console.log(`名前: ${animal.name}`);
console.log(`年齢: ${animal.age}`);



class Animal {
    constructor(name, age) {
      this.name = name;
      this.age = age;
    }
    
    // greetメソッドを追加してください
    greet(){
      console.log("こんにちは");
    }
        //クラス内のメソッドは関数式とは違う書き方？
  }
  
  const animal = new Animal("レオ", 3);
  
  console.log(`名前: ${animal.name}`);
  console.log(`年齢: ${animal.age}`);
  
  // animalに対してgreetメソッドを呼び出してください
  animal.greet();

  
  class Animal {
    constructor(name, age) {
      this.name = name;
      this.age = age;
    }
    
    greet() {
      console.log("こんにちは");
    }
    
    // infoメソッドを追加してください
    info(){
      console.log(`名前は${this.name}です`);
      console.log(`${this.age}歳です`);
    }
    
  }
  
  const animal = new Animal("レオ", 3);
  animal.greet();
  
  // animalに対してinfoメソッドを呼び出してください
  animal.info();
  


  class Animal {
    constructor(name, age) {
      this.name = name;
      this.age = age;
    }
    
    greet() {
      console.log("こんにちは");
    }
    
    info() {
      // greetメソッドを呼び出してください
      this.greet();
      
      console.log(`名前は${this.name}です`);
      console.log(`${this.age}歳です`);
    }
  }
  
  const animal = new Animal("レオ", 3);

  animal.info();
  

  class Animal {
    constructor(name, age) {
      this.name = name;
      this.age = age;
    }
    
    greet() {
      console.log("こんにちは");
    }
    
    info() {
      this.greet();
      console.log(`名前は${this.name}です`);
      console.log(`${this.age}歳です`);
    }
  }
  
  class Dog extends Animal {
  }
  
  // 定数dogにDogクラスのインスタンスを代入してください
  const dog = new Dog("レオ",4);
  
  // dogに対してinfoメソッドを呼び出してください
  dog.info();
  

  class Animal {
    constructor(name, age) {
      this.name = name;
      this.age = age;
    }
    
    greet() {
      console.log("こんにちは");
    }
    
    info() {
      this.greet();
      console.log(`名前は${this.name}です`);
      console.log(`${this.age}歳です`);
    }
  }
  
  class Dog extends Animal {
    // getHumanAgeメソッドを追加してください
    getHumanAge(){
      return this.age*7;
    }
  
  }
  
  const dog = new Dog("レオ", 4);
  dog.info();
  
  // 定数humanAgeを定義し、定数dogに対してgetHumanAgeメソッドを呼び出した値を代入してください
  const humanAge =dog.getHumanAge();
  
  // 「人間年齢で〇〇歳です」と出力してください
  console.log(`人間年齢で${humanAge}歳です`);
  






















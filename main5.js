// 変数numberを定義してください
let number = 0;

// 変数numberに1を加えて、その後に変数numberの値を出力してください
number += 1;
console.log(number);


// 上述の2行のコードを4回、貼り付けてください
number += 1;
console.log(number);
number += 1;
console.log(number);
number += 1;
console.log(number);
number += 1;
console.log(number);


// 変数numberを定義してください
let number = 1;

// while文を作成してください
while(number<=100){
  console.log(number);
  number += 1;
}

// for文を用いて、1から100までの数字を出力してください
for(let number = 1; number<=100; number++){
    console.log(number);
  }
  


// for文を完成させてください
for (let number = 1; number <= 100; number++) {
    // if文を用いて、numberが3の倍数の時に「3の倍数です」、そうでないときは数字を出力してください
    if (number % 3 === 0) {
      console.log("3の倍数です");
    } else {
      console.log(number);
    }
  }

// 定数animalsに、指定された配列を代入してください
const animals = ["dog","cat","sheep"];
    //配列名は複数形にする

// 定数animalsを出力して下さい
console.log(animals);
  

const animals = ["dog", "cat", "sheep"];

// 配列の1つ目の要素を出力してください
console.log(animals[0]);

// 配列の3つ目の要素を出力してください
console.log(animals[2]);


const animals = ["dog", "cat", "sheep"];

// 配列animalsの3つ目の要素を「rabbit」に更新してください
animals[2]="rabbit";

// 配列animalsの3つ目の要素をコンソールに表示して下さい
console.log(animals[2]);


const animals = ["dog", "cat", "sheep"];

// for文を用いて、配列の値を順にコンソールに出力してください
for(let i =0;i<3;i++){
  console.log(animals[i]);
}


const animals = ["dog", "cat", "sheep", "rabbit", "monkey", "tiger", "bear", "elephant"];

// lengthを用いて配列の要素の数を出力してください
console.log(animals.length);

// lengthを用いて条件式を書き換えてください
for (let i = 0; i < animals.length; i++) {
  console.log(animals[i]);
}

// 定数characterを定義し、指定されたオブジェクトを代入してください
const character ={name:"にんじゃわんこ",age:14};

// characterの値を出力してください
console.log(character);


const character = {name: "にんじゃわんこ", age: 14};

// characterのnameの値を出力してください
console.log(character.name);

// characterのageの値を「20」に更新してください
character.age = 20;

// characterをコンソールに出力してください
console.log(character);




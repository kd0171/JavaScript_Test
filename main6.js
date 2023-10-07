const greet = function() {
    console.log("こんにちは！");
    console.log("関数を学習していきましょう！");
  };
  
  // 関数を呼び出してください
  greet();
  


  // 定数helloに関数を代入してください
const hello = function() {
    console.log("こんにちは！");
    console.log("私の名前は○○です");
  }
  
  
  // 定数helloに代入された関数を呼び出してください
  hello();
  
// 定数greetにアロー関数を代入してください
const greet = ()=> {
    console.log("こんにちは！");
  }
  

// 定数greetを呼び出してください
greet();


// 関数の引数にnameを追加してください
const greet = (name) => {
    // 「こんにちは、〇〇さん」となるように出力してください
    console.log(`こんにちは、${name}さん`);
  };
  
  // greetの引数に「ひつじ仙人」を渡して呼び出してください
  greet("ひつじ仙人");
        //引数を文字列にする時はクオーテーションで囲む


// 関数の引数にnumber1とnumber2を追加してください
const add = (number1,number2) => {
    // number1とnumber2を足した値をコンソールに出力してください
    console.log(number1+number2);
  };
  
  // 引数に5と7を渡して関数を呼び出してください
  add(5,7);
  

  const half = (number) => {
    // numberを2で割った値を戻り値として返してください
    return number/2;
  };
  
  // 定数resultを定義してください
  const result = half(130);
  
  // 「130の半分は〇〇です」となるように出力してください
  console.log(`130の半分は${result}です`);
  







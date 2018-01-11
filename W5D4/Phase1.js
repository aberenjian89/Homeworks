function mysteryScoping1(){
  var x = 'out of block';
  if (true){
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// mysteryScoping1()
// in block
// in block


function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// mysteryScoping2()
 // in block
 // out of block


 function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
  //  var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

//mysteryScoping3()

// Error out x is const


function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// mysteryScoping4()

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  // let x = 'out of block again';
  console.log(x);
}

//mysteryScoping5()

// Error x is already defined


function madlib(verb,adjective,noun){
  console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`);
}

madlib('make','best','guac')

function isSubstring(searchString,substring){
  return searchString.includes(substring);
}

//console.log(isSubstring("time to program", "time"));

function fizzBuzz(array) {
    let arr=[];
    let i =0
    for(i=0;i<array.length;i++)
    {
      if ((array[i] % 3 == 0 && array[i] % 5 != 0) || (array[i] % 3 != 0 && array[i] % 5 == 0)) {
        if (array[i] % 3 == 0) {
          arr.push('fizz')
        }
        else if (array[i] % 5 == 0){
          arr.push('Buzz')
        }
      }
    }
    return arr
}

//console.log(fizzBuzz([2,4,5,7,15,12,18]))

function isPrime(num) {
  if (num < 2){
    return false;
  }
  let i = 2;
  while (i < num) {
    if (num % i == 0){
      return false
    }
    i++;
  }
  return true
}

console.log(isPrime(1));
console.log(isPrime(10));
console.log(isPrime(15485863));

function sumofNPrime(number) {
    let sum = 0 ;
    let i = 0 ;
    let PrimeCounter= 0
    while (PrimeCounter < number){
      if (isPrime(i)){
        sum+=i;
        PrimeCounter+=1
      }
      i++;
    }
    return sum
}

console.log(sumofNPrime(0));
console.log(sumofNPrime(1));
console.log(sumofNPrime(4));
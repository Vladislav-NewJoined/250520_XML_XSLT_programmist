// 1. Факториал
function getFact(n) {
  if (n === 1) return 1;
  return n * getFact(n - 1);
}
console.assert(getFact(1) === 1);
console.assert(getFact(4) === 24);
console.assert(getFact(6) === 720);
console.log("getFact работает корректно");

// 2. capitalize
function capitalize(str) {
  if (!str) return '';
  return str[0].toUpperCase() + str.slice(1);
}
console.assert(capitalize("foo") === "Foo");
console.assert(capitalize("Bar") === "Bar");
console.assert(capitalize("hello World!") === "Hello World!");
console.log("capitalize работает корректно");

// 3. getNFunctionsOld (до ES2015)
function getNFunctionsOld(n) {
  var arr = [];
  for (var i = 1; i <= n; i++) {
    (function(j) {
      arr.push(function() { return j; });
    })(i);
  }
  return arr;
}
var resultOld = getNFunctionsOld(4);
console.assert(resultOld[0]() === 1);
console.assert(resultOld[2]() === 3);

// 3. getNFunctionsNew (ES2015+)
function getNFunctionsNew(n) {
  const arr = [];
  for (let i = 1; i <= n; i++) {
    arr.push(() => i);
  }
  return arr;
}
var resultNew = getNFunctionsNew(4);
console.assert(resultNew[0]() === 1);
console.assert(resultNew[2]() === 3);

console.log("getNFunctions работает корректно");

// 4. getTotalPrice
function getTotalPrice() {
  let sum = 0;
  for (let i = 0; i < arguments.length; i++) {
    sum += arguments[i];
  }
  return Math.round(sum * 100) / 100;
}
console.assert(getTotalPrice(0.21, 0.79) === 1);
console.assert(getTotalPrice(0.20, 10.33, 23.4, 100) === 133.93);
console.log("getTotalPrice работает корректно");

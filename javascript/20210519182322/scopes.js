function hello() {
  let name = "Juan";
  {
    let name = "Manuel";
  }
  console.log(name);
}

function greet() {
  var name = "Juan";
  {
    var name = "Manuel";
  }
  console.log(name);
}

hello(); // "Juan"
greet(); // "Manuel"

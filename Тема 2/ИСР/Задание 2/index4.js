function myFactory() {
    return function(x) {
        return x**2;
    }
}
var f = myFactory();
console.log(f(6));
let res = numPower(5)(3);
console.log(res);

function numPower(n)
{
   return(m) => {
        if (m == 0)
            return 1;

        if (m == 1)
            return n;

        return n * numPower(n)(m - 1);
    }
}
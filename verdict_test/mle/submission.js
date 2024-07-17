const readline = require("readline");

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
});

rl.on("line", (input) => {
    const n = parseInt(input);
    rl.close();
    let arr = new Array(50000000);
    for (let i = 0; i < 50000000; i++) {
        arr[i] = i;
    }
    console.log(n);
});

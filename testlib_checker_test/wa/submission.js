const readline = require("readline");

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
});

rl.on("line", (input) => {
    const n = parseInt(input);
    let arr = input.split(" ").map(Number);

    console.log(-1);
    rl.close();
});

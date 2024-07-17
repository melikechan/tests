const readline = require("readline");

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
});

rl.on("line", (input) => {
    const n = parseInt(input);
    console.log(n);
    rl.close(
});

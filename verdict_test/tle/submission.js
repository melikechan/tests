const readline = require("readline");

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
});

rl.on("line", (input) => {
    const n = parseInt(input);
    rl.close();
    while (true) {
        console.log(n);
    }
});

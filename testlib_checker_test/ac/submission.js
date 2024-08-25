const readline = require("readline");

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
});

rl.on("line", (input) => {
    const n = parseInt(input);
    let arr = input.split(" ").map(Number);

    let max = arr[0];
    let maxIndex = 0;

    for (let i = 1; i < n; i++) {
        if (arr[i] > max) {
            max = arr[i];
            maxIndex = i;
        }
    }

    console.log(maxIndex);
    rl.close();
});

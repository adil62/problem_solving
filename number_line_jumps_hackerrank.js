'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.replace(/\s*$/, '')
        .split('\n')
        .map(str => str.replace(/\s*$/, ''));

    main();
});

function readLine() {
    return inputString[currentLine++];
}

// Complete the kangaroo function below.
function kangaroo(x1, v1, x2, v2) {
    // intialise jumper functions
    let jumpX1 = jump('x1', x1, v1)
    let jumpX2 = jump('x2', x2, v2)
    
    for (let i=0; i< 10000; i++) {
        let jumpPointX1 = jumpX1()
        let jumpPointX2 = jumpX2()
         
        if (jumpPointX1 === jumpPointX2) {
            return 'YES'
        }
    }        
    
    return 'NO'
}

function jump(type, startingPos, jumpBy) {
    let lastJumpPointX1 =  type == 'x1' ? (startingPos) : null;
    let lastJumpPointX2 =  type == 'x2' ? (startingPos) : null;
    
    return function() {
         
        if (type === 'x1') {
          return lastJumpPointX1 += jumpBy  
        } else {
            return lastJumpPointX2 += jumpBy        
        }        
    }
}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const x1V1X2V2 = readLine().split(' ');

    const x1 = parseInt(x1V1X2V2[0], 10);

    const v1 = parseInt(x1V1X2V2[1], 10);

    const x2 = parseInt(x1V1X2V2[2], 10);

    const v2 = parseInt(x1V1X2V2[3], 10);

    let result = kangaroo(x1, v1, x2, v2);

    ws.write(result + "\n");

    ws.end();
}

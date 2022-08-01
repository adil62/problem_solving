// Your task is to write a function maskify, which changes all but the last four characters into '#'.


function maskify(cc) {
    let res = ``;
    let maskEndIndex = cc.length - 5;

    for (let i = 0; i < cc.length; i++) {
        if (i <= maskEndIndex) {
            res += '#'
        } else {
            res += cc[i];
        }
    }

    return res;
}

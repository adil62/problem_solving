function spinWords(string) {
    var stringArr = string.split(' ');

    return stringArr.map(str => str.length >= 5 ? str.reverse() : str).join(' ');
}

String.prototype.reverse = function () {
    const str = this;
    let rev = '';

    for (let i = str.length - 1; i >= 0; i--) {
        rev += str[i];
    }

    return rev;
}
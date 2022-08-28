const strStr = require('./LEETCODE_implement_strstr');

test('Should return correct starting index of the needle', () => {
    expect(strStr('hello world', 'world')).toBe(6);
});

test('Should return starting index of the first occurence of the needle when there exists many same needles in the haystack', () => {
    expect(strStr('hello world world', 'world')).toBe(6);
});

test('Should work for haystack without spaces', () => {
    expect(strStr('helloWorldWorld', 'World')).toBe(5);
});

test('Should return 0 when needle is empty string', () => {
    expect(strStr('helloWorldWorld', '')).toBe(0);
});

test('Should work when needle is only 1 char length', () => {
    expect(strStr('abc', 'c')).toBe(2);
});

test('Should work when needle is at start of haytack', () => {
    expect(strStr('abcdef', 'abc')).toBe(0);
});

test('Should work when needle is at middle of haytack', () => {
    expect(strStr('abcdef', 'cd')).toBe(2);
});

test('Should handle needle greater than haystack', () => {
    expect(strStr('aaa', 'aaaa')).toBe(-1);
});

test('Should handle needle greater than haystack', () => {
    expect(strStr('mississippi', 'issip')).toBe(4);
});
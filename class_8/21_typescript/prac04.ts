// * Interface와 generic
// Ex1)
// Phone 인터페이스의 옵션이 여러 타입으로 정의 될 수 있다면? 제너릭!
function arrElement<T>(arr: T[], index: number): T | boolean {
    if (arr[index] === undefined) {
        return false;
    } else {
        return arr[index];
    }
}
console.log(arrElement<string>(["a"],0));

// 첫번째 인자로 들어간 배열의 길이보다 큰 index 수(두번째 인자)가 전달된다면 return false 시키기!

console.log(arrElement<string>(['a'], 1)); // false
// Set 생성
const mySet = new Set();

// 값 추가
mySet.add(1);
mySet.add(5);
mySet.add(5); // 중복된 값은 무시됩니다.
mySet.add('hello');

// 값 확인
console.log(mySet.has(1)); // true
console.log(mySet.has(3)); // false

// 크기 확인
console.log(mySet.size); // 3

// 값 삭제
mySet.delete(5);

// 모든 값 출력
mySet.forEach(value => {
    console.log(value); // 1, 'hello'
});



const clients = io.sockets.adapter.rooms.get(room);
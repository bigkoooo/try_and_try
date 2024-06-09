const word = document.querySelector('.again') // 문자열이 적혀있는 태그
console.log(word);

const displayLetters = (arr) => {
  for(let i = 0; i < arr.length; i++){
    addClassname(arr, i)
  }
}

const addClassname = (arr, i) => {
  setTimeout(() => {    
    arr[i].classList.add('on')
  }, 350+(i*80)) // i 뒤에 곱해지는 수로 애니메이션 조정
}

const splitLetters = (word) => {
  const letters = [];
  const content = word.innerHTML;
  word.innerHTML = ''; // 원래 문자열은 저장하고 태그는 삭제

  for(let i = 0; i < content.length; i++){
    let letter = document.createElement('span');
    letter.className = 'letter';
    letter.innerHTML = content.charAt(i);
    word.appendChild(letter);
    letters.push(letter);
  }
  
  displayLetters(letters);
}

splitLetters(word);
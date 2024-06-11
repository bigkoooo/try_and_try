
const word = document.querySelector('.word') // 문자열이 적혀있는 태그

const displayLetters = (arr) => {
  for(let i = 0; i < arr.length; i++){
    addClassname(arr, i)
  }
}

const addClassname = (arr, i) => {
  setTimeout(() => {              // 시간 지연 함수
    arr[i].classList.add('on')   // 지연되는 시간마다 클래스 .on 부여
  }, 350+(i*80)) 
}

// i 뒤에 곱해지는 수로 애니메이션 조정

const splitLetters = (word) => {
  const letters = [];
  const content = word.innerHTML;
  word.innerHTML = ''; // 원래 문자열은 저장하고 text를''로 만듬

  for(let i = 0; i < content.length; i++){
    let letter = document.createElement('span'); //span 태그를 만들어준 뒤
    letter.className = 'letter'; // 각 스팬 태그에 className latter를 만들어 줌
    letter.innerHTML = content.charAt(i); //인덱스 i마다 기존에 있던 문자열을 ''안 텍스트로 반환해 줌
    word.appendChild(letter); //그렇게 반환한 텍스트가 있는 span태그를 원래 문자열이 적혀있던 태그(word) 밑으로 반환해줌
    letters.push(letter);      // letter = [] 문자열에 한글자씩 들어가 있는 span태그를 문자열로 집어 넣음
  }
  
  displayLetters(letters);
}

splitLetters(word);

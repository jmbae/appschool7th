function addTodo(text) {
  // 문자열 보간법
  console.log(`addTodo: ${text}`);
  const todoList = document.getElementById('todoList');
  const li = document.createElement('li'); // <li></li> 생성
  li.textContent = text; // <li>text</li> 내용 추가
  li.classList.add('list-group-item'); // <li class="list-group-item">text</li> 클래스 추가
  // 체크박스 추가
  const checkbox = document.createElement('input');
  checkbox.type = 'checkbox';
  checkbox.classList.add('form-check-input');

  checkbox.addEventListener('change', () => {
    console.log('checkbox change');
    // 체크박스 체크 여부에 따라 취소선 추가
    li.style.textDecoration = checkbox.checked ? 'line-through' : 'none';
  });
  
  li.prepend(checkbox); // prepend: 앞에 추가
  todoList.append(li); // <ul><li class="list-group-item">text</li></ul> 추가
}

document.getElementById('addTodo').addEventListener('click', () => {
  const input = document.getElementById('todoInput');
  addTodo(input.value);
  input.value = '';
});
void main() {
  // javascript의 const 와 dart의 const는 다름
  // const는 compile time constant를 만듦
  const name = 'violet'; // final과 같이 작동
  // but compile time에 알아야함
  // const API = fetchApi();
  // 이건 컴파일타임이 아니라 유저의 입력에 따라 달라짐.
  // 따라서 const가 아닌 final을 사용해야함.
}

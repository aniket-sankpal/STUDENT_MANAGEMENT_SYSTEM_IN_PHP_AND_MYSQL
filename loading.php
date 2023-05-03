<?php header("refresh:5;url=user/login.php");?>

<body>
<div class="loader">
  <div class="ball" >&nbsp;S</div>
  <div class="ball">&nbsp;U</div>
  <div class="ball">&nbsp;R</div>
  <div class="ball" >&nbsp;A</div>
  <div class="ball">&nbsp;B</div>
  <div class="ball">&nbsp;H</div>
  <div class="ball" >&nbsp;I</div>
 
</div>

  <h1 style="color:#fff">Please Wait</h1>

</body>
<style>    
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 0;
  width: 100%;
  height: 100vh;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  background-color: #3333ff; 
}

.loader{
  width: 120px;
  height: 75px;
  display: flex;
  align-items: flex-end;
  justify-content: space-between;
}



.ball {
  width: 29px;
  height: 25px;
  color:blue;
  font-family:bold Times New Roman;
  border-radius: 50%;
  background-color: #fff;
  animation: bounce .5s alternate infinite;
}

.ball:nth-child(2) {
  animation-delay: .16s;
}

.ball:nth-child(3) {
  animation-delay: .32s;
}
.ball:nth-child(4) {
  animation-delay: .48s;
}

.ball:nth-child(5) {
  animation-delay: .64s;
}

.ball:nth-child(6) {
  animation-delay: .80s;
}

.ball:nth-child(7) {
  animation-delay: .96s;
}
.ball:nth-child(8) {
  animation-delay: .112s;
}
@keyframes bounce {
  from {
    tranform: scaleX(1.25);
  }
  to {
    transform: translateY(-50px) scaleX(1)
  }
}
<s/tyle>
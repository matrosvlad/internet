function toggleFunction(id) {
    const element = document.getElementById(id);
    if (element.style.display === 'none') {
        element.style.display = 'block'
    } else {
        element.style.display = 'none'
    }
}

window.onload = run;
var id = null;
function run() {
    var elem = document.getElementById("pic");   
    var pos = 0;
    clearInterval(id);
    id = setInterval(frame, 1);
    function frame() {
      if (pos == 500) {
        clearInterval(id);
        run();
      } else {
        pos++; 
        elem.style.left = pos + 'px'; 
      }
    }
}

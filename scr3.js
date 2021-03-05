function changeColor() {
    var red = document.getElementById("redrange").value;
    var green = document.getElementById("greenrange").value;
    var blue = document.getElementById("bluerange").value;
    var color = 'rgb(' + red + ',' + green + ',' + blue + ')';
    document.body.style.backgroundColor = color;
    document.getElementById("coloroutput").innerHTML = ': ' + color;
};

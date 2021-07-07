console.log("Hello, world!")

function divide() {
    var txt;
    txt = document.getElementsById('#text').value;
    var text = txt.split(".");
    var str = text.join('.</br>');
    document.write(str);
}
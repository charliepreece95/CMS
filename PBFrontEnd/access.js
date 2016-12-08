// Written by Ashley Redman
//
// Document written for use of changing the fontSize of html elements
//

// This function will increase the font-size of the p tag by 1
function	fontLarger() {
    var x = document.getElementsByTagName("P");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontSize = "larger";
    }
}

// This function will reduce the font-size of the p tag by 1
function 	fontSmaller() {
    var x = document.getElementsByTagName("P");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontSize = "small";
    }
}


// Standard reset to default function
function 	fontReset() {
    var x = document.getElementsByTagName("P");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.fontSize = "100%";
    }
}
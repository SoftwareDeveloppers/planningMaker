var keyLower = "qwertyuiopasdfghjklzxcvbnm";
var keyUpper = "QWERTYUIOPASDFGHJKLZXCVBNM";
var msgg= "DTKOQI Ftlkoft -- MTFQUXO Owkqiod -- ZQWTZ QGXS Lqsod -- DTAITMMTD Ktrq";

function dec(cypher) {
    var message = "";
    var lowerAlphabet = "abcdefghijklmnopqrstuvwxyz";
    var upperAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    var index = null;
    var ch;

    for (var i = 0; i < cypher.length; i++) {
        ch = cypher.charAt(i);

        //checks character case whether lowercase or uppercase 
        var isUpper = ch == ch.toUpperCase();
        isUpper ? index = keyUpper.indexOf(ch) : index = keyLower.indexOf(ch);

        //   if it's not a letter, then add it as it is
        if (index == -1) {
            message = message + ch;
        }
        else {

            // find the corresponding letter in key and add
            isUpper ? message = message + upperAlphabet.charAt(index) : message = message + lowerAlphabet.charAt(index);
        }
    }

    return message;
};


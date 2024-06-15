({
    doInit : function(component, event, helper) {
        

        //Colums decided
        const gameMode = component.get("v.mode");
        let column = 0;
        if(gameMode && gameMode==="hard"){
            column= 6;
        } else if (gameMode==="medium"){
            column= 4;
        } else {
            column= 3;
        }

        let blockSize = 12/column;
        component.set("v.blockSize", blockSize);

        //build a list of 100 words
        const words = helper.getWords(column * column);
        component.set("v.words", words);
        

        //get win word
        const winWord = helper.getWinWord(words);
        component.set("v.winWord", winWord);
        

    }

    
});
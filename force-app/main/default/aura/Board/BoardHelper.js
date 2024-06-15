({
    getWords : function(count) {
        if (count > 100) return;
        //build the array

        let wordsArray = [  
        "nippy",
        "giant",
        "abhorrent",
        "cope",
        "agonizing",
        "highfalutin",
        "activity",
        "matter",
        "back",
        "day",
        "good",
        "misty",
        "police",
        "chance",
        "balls",
        "party",
        "wiry",
        "touch",
        "tight",
        "admire",
        "pail",
        "ink",
        "highfalutin",
        "petite",
        "juvenile",
        "encroach",
        "imply",
        "audit",
        "probable",
        "bless",
        "achiever",
        "inquisitive",
        "wild",
        "greedy",
        "subtract",
        "sticks",
        "paltry",
        "vex",
        "awake",
        "tasteful",
        "implant",
        "lumber",
        "bells",
        "hate",
        "disturbed",
        "chat",
        "crowded",
        "door",
        "flag",
        "drum",
        "natural",
        "weight",
        "bean",
        "imply",
        "crabby",
        "move",
        "astonish",
        "grubby",
        "son",
        "bend",
        "useful",
        "melodic",
        "screeching",
        "sate",
        "cruel",
        "sip",
        "kiss",
        "historical",
        "allow",
        "apply",
        "long",
        "gamy",
        "available",
        "govern",
        "pleasant",
        "moon",
        "garden",
        "root",
        "meeting",
        "knee",
        "health",
        "moo",
        "living",
        "offset",
        "applaud",
        "clam",
        "holistic",
        "skin",
        "grip",
        "determine",
        "bears",
        "trade",
        "toys",
        "obtain",
        "difficult",
        "taste",
        "ritzy",
        "sea",
        "respect",
        "birds" 
    ];
    //Randomize Words Array
    wordsArray= this.randomizeArray(wordsArray);
    return wordsArray.slice(0,count);

    },

    randomizeArray : function(arr){
        const randomArr = arr;
        //Randomize the array

        for ( let i = randomArr.length-1 ; i>0; i--){
            const j = Math.floor(Math.random() * i);
            const temp = randomArr[i];
            randomArr[i] = randomArr[j];
            randomArr[j] = temp ;
        }
        return randomArr;
    },

    getWinWord : function (arr){
        const randomIndex = Math.floor(Math.random() * arr.length);
        return arr[randomIndex];
    }

});
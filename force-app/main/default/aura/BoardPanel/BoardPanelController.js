({
    startGame : function(component, event, helper) {
            let gameModeComboBox = component.find("gameMode");
            let selectedValue = gameModeComboBox.get("v.value");
            component.set("v.selectedMode", selectedValue);
            console.log('The start new game button is clicked' + 'and the game mode is ' + selectedValue);
            alert('The start new game button is clicked' + 'and the game mode is ' + selectedValue)
    },

    reshuffleBoard: function(component, event, helper) {
        console.log('The reshuffle board button is clicked');
    }
})
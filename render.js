var chooseditem = "NULL";

function chooseHand(player,index,qmlitem) {
    var status = wrapper.chooseHand(player,index);
    if(status == "false") {
        return;
    } else if (status == "whole"){
        if(player == 1) {
            player1_battlefield.border.color = "lightblue";
        } else {
            player2_battlefield.border.color = "lightblue"
        }
    }
    qmlitem.border.color = "lightblue";
    chooseditem = qmlitem;
}

function cancelChoose() {
    console.log("cancel");
    if(chooseditem == "NULL") return;
    console.log("in cancel");
    chooseditem.border.color = "transparent";
    player1_battlefield.border.color = "transparent";
    player2_battlefield.border.color = "transparent";
    wrapper.cancelChoose(1);
    chooseditem = "NULL";
}

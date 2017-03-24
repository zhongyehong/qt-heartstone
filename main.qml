import QtQuick 2.3
import QtQuick.Window 2.2
//import Hearthstone.Mana 1.0
import Hearthstone.Wrapper 1.0
//import Hearthstone.QString 1.0
import Hearthstone.Minion 1.0
import Hearthstone.Card 1.0
import "render.js" as Render

Window {
    visible: true
    width: 1000
    height: 800
    property alias player2_hand: player2_hand
    property alias player1_hand: player1_hand
    property alias button_end: button_end
    property alias player1_deck: player1_deck
    property alias player2_deck: player2_deck
    property alias hero1: hero1
    property alias player1_hero: player1_hero
    property alias hero2: hero2
    property alias player2_hero: player2_hero
    property alias player1_battlefield: player1_battlefield
    property alias player2_battlefield: player2_battlefield
    property alias player1_mana: player1_mana
    property alias player2_mana: player2_mana
    property bool focus: false
    property bool choosed: false
    property var currentFrame: undefined
    property var currentCard: undefined


    Wrapper {
        id: wrapper
    }



    ListView {
        id: player1_mana
        x: 16
        y: 725
        width: 150
        height: 150
        Row{
            spacing: 2

            Repeater {
                model: wrapper.player1_mana.full
                Image {
                    width: 10
                    height: 10
                    source: "Image/UI/fullmana.jpg"
                }
            }

            Repeater {
                model: wrapper.player1_mana.empty
                Image {
                    width: 10
                    height: 10
                    source: "Image/UI/emptymana.jpg"
                }
            }

        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                setMana();
            }
        }

    }

    ListView {
        id: player2_mana
        x: 16
        y: 75
        width: 150
        height: 150
        Row{
            spacing: 2

            Repeater {
                model: wrapper.player2_mana.full
                Image {
                    width: 10
                    height: 10
                    source: "Image/UI/fullmana.jpg"
                }
            }

            Repeater {
                model: wrapper.player2_mana.empty
                Image {
                    width: 10
                    height: 10
                    source: "Image/UI/emptymana.jpg"
                }
            }

        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                setMana();
            }
        }
    }

    Rectangle {
        id: player1_battlefield
        x: 0
        y: 400
        width: 800
        height: 250
        color: "#ffffff"

        Row{
            spacing: 2
            anchors.centerIn: parent

            Repeater {
                model: wrapper.player1_minions.length

                Rectangle {
                   id:minionFrame
                   border.color: "black"
                   border.width: 1
                   width:80
                   height:80

                   Image {
                        source: "Image/Card/" + wrapper.player1_minions[index].name
                        width:50
                        height:50
                        anchors.centerIn: minionFrame
                        MouseArea {
                            anchors.fill: parent
                            acceptedButtons: Qt.LeftButton | Qt.RightButton
                           /* onClicked: {
                                if(mouse.button == Qt.LeftButton){
                                    cardFrame.x = cardFrame.x + mouseX - 25
                                    cardFrame.y = cardFrame.y + mouseY - 25
                                    hoverEnabled = true
                                    parent.setFrameColor()
                                } else if (mouse.button == Qt.RightButton) {
                                    cardFrame.x = index*52
                                    cardFrame.y = 0
                                    hoverEnabled = false
                                    parent.clearFrameColor()
                                }
                            }

                            onPositionChanged: {
                                cardFrame.x = cardFrame.x + mouseX - 25
                                cardFrame.y = cardFrame.y + mouseY - 25
                            }*/

                        }
                    }

                }
            }
        }
    }

    Rectangle {
        id: player2_battlefield
        x: 0
        y: 150
        width: 800
        height: 250
        color: "#ffffff"
    }

    Rectangle {
        id: player1_hero
        x: 150
        y: 650
        width: 150
        height: 150
        color: "#ffffff"


        Image {
            id: hero1
            anchors.fill: parent
            source: "Image/Hero/Anduin.png"
        }
    }

    Rectangle {
        id: player2_hero
        x: 150
        y: 0
        width: 150
        height: 150
        color: "#ffffff"


        Image {
            id: hero2
            anchors.fill: parent
            source: "Image/Hero/Jaina.png"
        }
    }


    Rectangle {
        id: player1_deck
        x: 800
        y: 500
        width: 200
        height: 300
        color: "#ffffff"

        Image {
            id: deck1
            anchors.fill: parent
            source: "Image/UI/deckback_1.jpg"
        }
    }

    Rectangle {
        id: player2_deck
        x: 800
        y: 0
        width: 200
        height: 300
        color: "#ffffff"

        Image {
            id: deck2
            anchors.fill: parent
            source: "Image/UI/deckback_2.jpg"
        }
    }


    Rectangle {
        id: button_end
        x: 800
        y: 300
        width: 200
        height: 200
        color: "#ffffff"
        Image {
            anchors.fill: parent
            source: "Image/UI/endturn.png"
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                wrapper.nextTurn();
            }
        }



    }

    Rectangle {
        id: player1_hand
        x: 300
        y: 650
        width: 500
        height: 150
        color: "#ffffff"


        Row{
            spacing: 2
            anchors.centerIn: parent

            Repeater {
                model: wrapper.player1_hand.length

                Rectangle {
                   id:cardFrame
                   border.color: "black"
                   border.width: 1
                   width:50
                   height:50

                   Image {
                        id:image
                        source: "Image/Card/" + wrapper.player1_hand[index].name
                        width:50
                        height:50
                        anchors.centerIn: cardFrame
                        MouseArea {
                            anchors.fill: parent
                            acceptedButtons: Qt.LeftButton | Qt.RightButton
                            onClicked: {
                                if(mouse.button == Qt.LeftButton){
                                    if(choosed==false) {
                                        if(1==1){//wrapper.chooseHand(1,index)) {
                                            cardFrame.x = cardFrame.x + mouseX - 25
                                            cardFrame.y = cardFrame.y + mouseY - 25
                                            hoverEnabled = true
                                            currentCard = wrapper.player1_hand[index]
                                            parent.setFrameColor()
                                            choosed=true
                                        }
                                    } else {
                                        var lx = player1_battlefield.x
                                        var rx = player1_battlefield.x + player1_battlefield.width
                                        var uy = player1_battlefield.y
                                        var dy = player1_battlefield.y + player1_battlefield.height
                                        if(cardFrame.x+25>=lx && cardFrame.x+25<=rx && cardFrame.y+25>=uy && cardFrame.y+25<=dy) {
                                            if(currentCard.target == "none") {

                                            }
                                        }
                                    }
                                } else if (mouse.button == Qt.RightButton) {
                                    cardFrame.x = index*52
                                    cardFrame.y = 0
                                    hoverEnabled = false
                                    parent.clearFrameColor()
                                }
                            }

                            onPositionChanged: {
                                cardFrame.x = cardFrame.x + mouseX - 25
                                cardFrame.y = cardFrame.y + mouseY - 25
                            }

                        }
                        function setFrameColor() {
                            console.debug("in");
                            if (currentFrame)
                                currentFrame.border.color = "black";
                            currentFrame = cardFrame;
                            currentFrame.border.color = "red";
                        }
                        function clearFrameColor() {
                            if (currentFrame)
                                currentFrame.border.color = "black";
                            currentFrame = undefined;
                        }
                    }

                }
                /*Image {
                    width: 50
                    height: 50
                    source: "Image/Card/" + wrapper.player1_hand[index].name
                    scale: 1
                    Rectangle {
                        anchors.fill: parent
                        color: "transparent"
                        border.width:1
                        border.color: "transparent"
                        signal cancel();
                        onCancel: {

                        }

                        MouseArea {
                            anchors.fill : parent
                            hoverEnabled: true
                            onEntered: {
                                parent.parent.scale = 3
                            }
                            onExited: {
                                parent.parent.scale = 1
                            }
                            acceptedButtons: Qt.LeftButton | Qt.RightButton
                            onClicked: {
                                console.log("event")
                                if(mouse.button == Qt.LeftButton) {
                                    Render.chooseHand(1,index,parent);
                                } else if (mouse.button == Qt.RightButton) {
                                    console.log("right button");
                                    Render.cancelChoose();
                                }
                            }
                        }
                    }
                }*/
            }
        }
    }


    Rectangle {
        id: player2_hand
        x: 300
        y: 0
        width: 500
        height: 150
        color: "#ffffff"

        Row{
            spacing: 2
            anchors.centerIn: parent

            Repeater {
                model: wrapper.player2_hand.length
                Image {
                    width: 50
                    height: 50
                    source: "Image/Card/" + wrapper.player2_hand[index]
                    scale: 1

                }
            }
        }
    }


}

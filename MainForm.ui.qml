import QtQuick 2.5

Rectangle {

    width: 1000
    height: 800
    property alias rectangle6: rectangle6

    Text {
        anchors.centerIn: parent
        text: "Hello World"
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 150
        height: 150
        color: "#ffffff"
    }

    Rectangle {
        id: rectangle2
        x: 0
        y: 650
        width: 150
        height: 150
        color: "#ffffff"
    }

    Rectangle {
        id: rectangle3
        x: 0
        y: 150
        width: 800
        height: 250
        color: "#ffffff"
    }

    Rectangle {
        id: rectangle4
        x: 0
        y: 400
        width: 800
        height: 250
        color: "#ffffff"

        Rectangle {
            id: rectangle6
            x: 150
            y: 650
            width: 200
            height: 200
            color: "#ffffff"
        }
    }

    Rectangle {
        id: rectangle5
        x: 150
        y: 0
        width: 650
        height: 150
        color: "#ffffff"
    }
}

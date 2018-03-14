import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: window
    visible: true
    width: 480
    height: 640
    color: "#faf8ef"
    title: qsTr("Hello World")

    Rectangle {
        id: grille
        x: 40
        width: 410
        height: 410
        color: "#bbada1"
        anchors.top: parent.top
        anchors.topMargin: 190
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            id: box_1_1
            x: 10
            y: 10
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 10
            anchors.left: parent.left
            anchors.topMargin: 10
        }

        Rectangle {
            id: box_2_1
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 10
            anchors.left: parent.left
            anchors.topMargin: 110
        }

        Rectangle {
            id: box_3_1
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 10
            anchors.left: parent.left
            anchors.topMargin: 210
        }

        Rectangle {
            id: box_4_1
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 10
            anchors.left: parent.left
            anchors.topMargin: 310
        }

        Rectangle {
            id: box_1_2
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 110
            anchors.left: parent.left
            anchors.topMargin: 10
        }

        Rectangle {
            id: box_2_2
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 110
            anchors.left: parent.left
            anchors.topMargin: 110
        }

        Rectangle {
            id: box_3_2
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 110
            anchors.left: parent.left
            anchors.topMargin: 210
        }

        Rectangle {
            id: box_4_2
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 110
            anchors.left: parent.left
            anchors.topMargin: 310
        }

        Rectangle {
            id: box_1_3
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 210
            anchors.left: parent.left
            anchors.topMargin: 10
        }

        Rectangle {
            id: box_2_3
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 210
            anchors.left: parent.left
            anchors.topMargin: 110
        }

        Rectangle {
            id: box_3_3
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 210
            anchors.left: parent.left
            anchors.topMargin: 210
        }

        Rectangle {
            id: box_4_3
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 210
            anchors.left: parent.left
            anchors.topMargin: 310
        }

        Rectangle {
            id: box_1_4
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 310
            anchors.left: parent.left
            anchors.topMargin: 10
        }

        Rectangle {
            id: box_2_4
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 310
            anchors.left: parent.left
            anchors.topMargin: 110
        }

        Rectangle {
            id: box_3_4
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 310
            anchors.left: parent.left
            anchors.topMargin: 210
        }

        Rectangle {
            id: box_4_4
            x: -9
            y: -9
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 310
            anchors.left: parent.left
            anchors.topMargin: 310
        }
    }

    Text {
        id: titre
        color: "#8a8179"
        text: qsTr("2048")
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.left: grille.left
        anchors.leftMargin: 0
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        font.family: "Verdana"
        font.pixelSize: 50
    }

    Rectangle {
        id: box_score
        x: 220
        width: 100
        height: 60
        color: "#c7bbb1"
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.right: box_best.left
        anchors.rightMargin: 5

        Text {
            id: text_score
            x: 28
            width: 100
            height: 20
            color: "#ece2d3"
            text: qsTr("SCORE")
            anchors.top: parent.top
            anchors.topMargin: 3
            anchors.horizontalCenter: parent.horizontalCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            font.pixelSize: 16
        }

        Text {
            id: text2
            x: 39
            y: 29
            color: "#ffffff"
            text: qsTr("0")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 16
        }
    }

    Rectangle {
        id: box_best
        x: 345
        width: 100
        height: 60
        color: "#c7bbb1"
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.right: grille.right
        anchors.rightMargin: 0

        Text {
            id: text_best
            x: 32
            y: 8
            width: 100
            height: 20
            color: "#ece2d3"
            text: qsTr("BEST")
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            anchors.topMargin: 3
        }

        Text {
            id: text3
            x: 39
            y: 29
            color: "#ffffff"
            text: qsTr("34505")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            font.bold: true
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.bottomMargin: 10
        }
    }

    Rectangle {
        id: box_new_game
        x: 252
        width: 120
        height: 40
        color: "#8e7a67"
        anchors.top: box_best.bottom
        anchors.topMargin: 15
        anchors.right: grille.right
        anchors.rightMargin: 0

        Text {
            id: text1
            color: "#ece7e1"
            text: qsTr("New Game")
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.family: "Verdana"
            font.pixelSize: 16
        }
    }

    Text {
        id: text4
        y: 113
        text: qsTr("Join the number and get to the 2048 tile !")
        anchors.left: titre.left
        anchors.leftMargin: 0
        font.bold: false
        anchors.verticalCenter: box_new_game.verticalCenter
        font.pixelSize: 14
    }
}

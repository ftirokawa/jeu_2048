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
        y: 212
        width: 410
        height: 410
        color: "#bbada1"
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
}

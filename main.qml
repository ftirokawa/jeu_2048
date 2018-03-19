import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 480
    height: 640
    title: qsTr("Hello World")

    Text {
        id: text1
        x: 210
        y: 278
        text: damier.boxValQML
        font.pixelSize: 12
    }
}

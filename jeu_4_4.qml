import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: window
    visible: true
    width: 480
    height: 640
    color: "#faf8ef"
    property alias valeur1: valeur1
    title: qsTr("Hello World")

    Rectangle {
        function color_box(val){
            if(val==0){
                return 0;
            }
            else{
                return 1;
            }
        }

        id: grille
        x: 40
        width: 410
        height: 410
        color: "#bbada1"
        anchors.top: parent.top
        anchors.topMargin: 190
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        focus: true

        Rectangle {
            id: box_1_1
            x: 10;
            y: 10;
            width: 90
            height: 90
            color: "#ccc0b4"
            anchors.top: parent.top
            anchors.leftMargin: 10
            anchors.left: parent.left
            anchors.topMargin: 10

        }

        Rectangle {
            id: rectangle
            x: damier.boxPosXQML[0]
            y: damier.boxPosYQML[0]
            width: 90
            height: 90
            color: damier.boxColQML[0]
            z: 1
            opacity: parent.color_box(damier.boxValQML[0])

            Text {
                id: valeur1
                x: 34
                y: 38
                color: "#000000"
                text: damier.boxValQML[0]
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
            }

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
            id: rectangle4
            x: damier.boxPosXQML[4];
            y: damier.boxPosYQML[4];
            width: 90
            height: 90
            color: damier.boxColQML[4]
            z: 1
            opacity: parent.color_box(damier.boxValQML[4])
            Text {
                id: valeur5
                x: 34
                y: 38
                text: damier.boxValQML[4]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24

                anchors.horizontalCenter: parent.horizontalCenter
            }
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
            id: rectangle8
            x: damier.boxPosXQML[8];
            y: damier.boxPosYQML[8];
            width: 90
            height: 90
            color: damier.boxColQML[8]
            z: 1
            opacity: parent.color_box(damier.boxValQML[8])
            Text {
                id: valeur9
                x: 34
                y: 38
                text: damier.boxValQML[8]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
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
            id: rectangle12
            x: damier.boxPosXQML[12]
            y: damier.boxPosYQML[12]
            width: 90
            height: 90
            color: damier.boxColQML[12]
            z: 1
            opacity: parent.color_box(damier.boxValQML[12])
            Text {
                id: valeur13
                x: 34
                y: 38
                text: damier.boxValQML[12]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
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
            id: rectangle1
            x: damier.boxPosXQML[1]
            y: damier.boxPosYQML[1]
            width: 90
            height: 90
            color: damier.boxColQML[1]
            z: 1
            opacity: parent.color_box(damier.boxValQML[1])
            Text {
                id: valeur2
                x: 34
                y: 38
                text: damier.boxValQML[1]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
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
            id: rectangle5
            x: damier.boxPosXQML[5]
            y: damier.boxPosYQML[5]
            width: 90
            height: 90
            color: damier.boxColQML[5]
            z: 1
            opacity: parent.color_box(damier.boxValQML[5])
            Text {
                id: valeur6
                x: 34
                y: 38
                text: damier.boxValQML[5]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
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
            id: rectangle9
            x: damier.boxPosXQML[9]
            y: damier.boxPosYQML[9]
            width: 90
            height: 90
            color: damier.boxColQML[9]
            z: 1
            opacity: parent.color_box(damier.boxValQML[9])
            Text {
                id: valeur10
                x: 34
                y: 38
                text: damier.boxValQML[9]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
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
            id: rectangle13
            x: damier.boxPosXQML[13]
            y: damier.boxPosYQML[13]
            width: 90
            height: 90
            color: damier.boxColQML[13]
            z: 1
            opacity: parent.color_box(damier.boxValQML[13])
            Text {
                id: valeur14
                x: 34
                y: 38
                text: damier.boxValQML[13]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
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
            id: rectangle2
            x: damier.boxPosXQML[2]
            y: damier.boxPosYQML[2]
            width: 90
            height: 90
            color: damier.boxColQML[2]
            z: 1
            opacity: parent.color_box(damier.boxValQML[2])
            Text {
                id: valeur3
                x: 34
                y: 38
                text: damier.boxValQML[2]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
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
            id: rectangle6
            x: damier.boxPosXQML[6]
            y: damier.boxPosYQML[6]
            width: 90
            height: 90
            color: damier.boxColQML[6]
            z: 1
            opacity: parent.color_box(damier.boxValQML[6])
            Text {
                id: valeur7
                x: 34
                y: 38
                text: damier.boxValQML[6]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
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
            id: rectangle10
            x: damier.boxPosXQML[10]
            y: damier.boxPosYQML[10]
            width: 90
            height: 90
            color: damier.boxColQML[10]
            z: 1
            opacity: parent.color_box(damier.boxValQML[10])
            Text {
                id: valeur11
                x: 34
                y: 38
                text: damier.boxValQML[10]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
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
            id: rectangle14
            x: damier.boxPosXQML[14]
            y: damier.boxPosYQML[14]
            width: 90
            height: 90
            color: damier.boxColQML[14]
            z: 1
            opacity: parent.color_box(damier.boxValQML[14])
            Text {
                id: valeur15
                x: 34
                y: 38
                text: damier.boxValQML[14]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
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
            id: rectangle3
            x: damier.boxPosXQML[3]
            y: damier.boxPosYQML[3]
            width: 90
            height: 90
            color: damier.boxColQML[3]
            z: 1
            opacity: parent.color_box(damier.boxValQML[3])
            Text {
                id: valeur4
                x: 34
                y: 38
                text: damier.boxValQML[3]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
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
            id: rectangle7
            x: damier.boxPosXQML[7]
            y: damier.boxPosYQML[7]
            width: 90
            height: 90
            color: damier.boxColQML[7]
            opacity: parent.color_box(damier.boxValQML[7])
            z: 1
            Text {
                id: valeur8
                x: 34
                y: 38
                text: damier.boxValQML[7]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
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
            id: rectangle11
            x: damier.boxPosXQML[11]
            y: damier.boxPosYQML[11]
            width: 90
            height: 90
            color: damier.boxColQML[11]
            opacity: parent.color_box(damier.boxValQML[11])
            z: 1
            Text {
                id: valeur12
                x: 34
                y: 38
                text: damier.boxValQML[11]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
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

        Rectangle {
            id: rectangle15
            x: damier.boxPosXQML[15]
            y: damier.boxPosYQML[15]
            width: 90
            height: 90
            color: damier.boxColQML[15]
            opacity: parent.color_box(damier.boxValQML[15])
            z: 1
            Text {
                id: valeur16
                x: 34
                y: 38
                text: damier.boxValQML[15]
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        StateGroup {
            id: stateGroup0
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle; x: damier.boxPosXQML[0]; y: damier.boxPosYQML[0]; color: damier.boxColQML[0]}
                    PropertyChanges { target: valeur1; text: damier.boxValQML[0];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle; x: damier.boxPosXQML[0]; y: damier.boxPosYQML[0]; color: damier.boxColQML[0]}
                    PropertyChanges { target: valeur1; text: damier.boxValQML[0];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur1; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur1; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup1
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle1; x: damier.boxPosXQML[1]; y: damier.boxPosYQML[1]; color: damier.boxColQML[1]}
                    PropertyChanges { target: valeur2; text: damier.boxValQML[1];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle1; x: damier.boxPosXQML[1]; y: damier.boxPosYQML[1]; color: damier.boxColQML[1]}
                    PropertyChanges { target: valeur2; text: damier.boxValQML[1];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle1; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle1; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle1; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur2; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle1; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle1; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle1; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur2; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup2
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle2; x: damier.boxPosXQML[2]; y: damier.boxPosYQML[2]; color: damier.boxColQML[2]}
                    PropertyChanges { target: valeur3; text: damier.boxValQML[2];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle2; x: damier.boxPosXQML[2]; y: damier.boxPosYQML[2]; color: damier.boxColQML[2]}
                    PropertyChanges { target: valeur3; text: damier.boxValQML[2];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle2; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle2; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle2; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur3; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle2; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle2; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle2; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur3; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup3
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle3; x: damier.boxPosXQML[3]; y: damier.boxPosYQML[3]; color: damier.boxColQML[3]}
                    PropertyChanges { target: valeur4; text: damier.boxValQML[3];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle3; x: damier.boxPosXQML[3]; y: damier.boxPosYQML[3]; color: damier.boxColQML[3]}
                    PropertyChanges { target: valeur4; text: damier.boxValQML[3];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle3; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle3; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle3; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur4; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle3; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle3; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle3; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur4; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup4
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle4; x: damier.boxPosXQML[4]; y: damier.boxPosYQML[4]; color: damier.boxColQML[4]}
                    PropertyChanges { target: valeur5; text: damier.boxValQML[4];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle4; x: damier.boxPosXQML[4]; y: damier.boxPosYQML[4]; color: damier.boxColQML[4]}
                    PropertyChanges { target: valeur5; text: damier.boxValQML[4];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle4; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle4; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle4; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur5; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle4; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle4; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle4; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur5; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup5
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle5; x: damier.boxPosXQML[5]; y: damier.boxPosYQML[5]; color: damier.boxColQML[5]}
                    PropertyChanges { target: valeur6; text: damier.boxValQML[5];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle5; x: damier.boxPosXQML[5]; y: damier.boxPosYQML[5]; color: damier.boxColQML[5]}
                    PropertyChanges { target: valeur6; text: damier.boxValQML[5];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle5; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle5; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle5; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur6; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle5; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle5; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle5; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur6; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup6
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle6; x: damier.boxPosXQML[6]; y: damier.boxPosYQML[6]; color: damier.boxColQML[6]}
                    PropertyChanges { target: valeur7; text: damier.boxValQML[6];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle6; x: damier.boxPosXQML[6]; y: damier.boxPosYQML[6]; color: damier.boxColQML[6]}
                    PropertyChanges { target: valeur7; text: damier.boxValQML[6];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle6; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle6; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle6; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur7; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle6; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle6; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle6; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur7; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup7
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle7; x: damier.boxPosXQML[7]; y: damier.boxPosYQML[7]; color: damier.boxColQML[7]}
                    PropertyChanges { target: valeur8; text: damier.boxValQML[7];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle7; x: damier.boxPosXQML[7]; y: damier.boxPosYQML[7]; color: damier.boxColQML[7]}
                    PropertyChanges { target: valeur8; text: damier.boxValQML[7];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle7; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle7; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle7; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur8; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle7; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle7; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle7; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur8; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup8
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle8; x: damier.boxPosXQML[8]; y: damier.boxPosYQML[8]; color: damier.boxColQML[8]}
                    PropertyChanges { target: valeur9; text: damier.boxValQML[8];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle8; x: damier.boxPosXQML[8]; y: damier.boxPosYQML[8]; color: damier.boxColQML[8]}
                    PropertyChanges { target: valeur9; text: damier.boxValQML[8];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle8; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle8; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle8; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur9; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle8; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle8; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle8; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur9; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup9
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle9; x: damier.boxPosXQML[9]; y: damier.boxPosYQML[9]; color: damier.boxColQML[9]}
                    PropertyChanges { target: valeur10; text: damier.boxValQML[9];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle9; x: damier.boxPosXQML[9]; y: damier.boxPosYQML[9]; color: damier.boxColQML[9]}
                    PropertyChanges { target: valeur10; text: damier.boxValQML[9];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle9; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle9; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle9; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur10; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle9; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle9; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle9; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur10; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup10
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle10; x: damier.boxPosXQML[10]; y: damier.boxPosYQML[10]; color: damier.boxColQML[10]}
                    PropertyChanges { target: valeur11; text: damier.boxValQML[10];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle10; x: damier.boxPosXQML[10]; y: damier.boxPosYQML[10]; color: damier.boxColQML[10]}
                    PropertyChanges { target: valeur11; text: damier.boxValQML[10];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle10; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle10; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle10; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur11; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle10; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle10; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle10; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur11; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup11
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle11; x: damier.boxPosXQML[11]; y: damier.boxPosYQML[11]; color: damier.boxColQML[11]}
                    PropertyChanges { target: valeur12; text: damier.boxValQML[11];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle11; x: damier.boxPosXQML[11]; y: damier.boxPosYQML[11]; color: damier.boxColQML[11]}
                    PropertyChanges { target: valeur12; text: damier.boxValQML[11];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle11; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle11; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle11; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur12; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle11; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle11; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle11; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur12; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup12
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle12; x: damier.boxPosXQML[12]; y: damier.boxPosYQML[12]; color: damier.boxColQML[12]}
                    PropertyChanges { target: valeur13; text: damier.boxValQML[12];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle12; x: damier.boxPosXQML[12]; y: damier.boxPosYQML[12]; color: damier.boxColQML[12]}
                    PropertyChanges { target: valeur13; text: damier.boxValQML[12];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle12; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle12; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle12; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur13; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle12; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle12; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle12; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur13; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup13
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle13; x: damier.boxPosXQML[13]; y: damier.boxPosYQML[13]; color: damier.boxColQML[13]}
                    PropertyChanges { target: valeur14; text: damier.boxValQML[13];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle13; x: damier.boxPosXQML[13]; y: damier.boxPosYQML[13]; color: damier.boxColQML[13]}
                    PropertyChanges { target: valeur14; text: damier.boxValQML[13];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle13; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle13; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle13; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur14; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle13; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle13; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle13; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur14; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup14
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle14; x: damier.boxPosXQML[14]; y: damier.boxPosYQML[14]; color: damier.boxColQML[14]}
                    PropertyChanges { target: valeur15; text: damier.boxValQML[14];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle14; x: damier.boxPosXQML[14]; y: damier.boxPosYQML[14]; color: damier.boxColQML[14]}
                    PropertyChanges { target: valeur15; text: damier.boxValQML[14];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle14; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle14; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle14; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur15; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle14; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle14; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle14; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur15; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        StateGroup {
            id: stateGroup15
            states: [State {
                    name: "suivant";
                    PropertyChanges { target: rectangle15; x: damier.boxPosXQML[15]; y: damier.boxPosYQML[15]; color: damier.boxColQML[15]}
                    PropertyChanges { target: valeur16; text: damier.boxValQML[15];}
                },
                State {
                    name: "suivant2";
                    PropertyChanges { target: rectangle15; x: damier.boxPosXQML[15]; y: damier.boxPosYQML[15]; color: damier.boxColQML[15]}
                    PropertyChanges { target: valeur16; text: damier.boxValQML[15];}
                }
            ]

            transitions: [Transition {
                    from: "*"; to: "suivant"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle15; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle15; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle15; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur16; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                },
                Transition {
                    from: "*"; to: "suivant2"; reversible: false
                    SequentialAnimation {
                        NumberAnimation { target: rectangle15; properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle15; properties: "y"; duration: 500; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: rectangle15; properties: "color"; duration: 10; easing.type: Easing.InOutQuad }
                        NumberAnimation { target: valeur16; properties: "text"; duration: 10; easing.type: Easing.InOutQuad }
                    }
                }]
        }

        Keys.onPressed: {
            switch (event.key) {
            case Qt.Key_Up:
                damier.mouvement(1);
                if (damier.controleQML === 1){
                    stateGroup0.state ='suivant'
                    stateGroup1.state ='suivant'
                    stateGroup2.state ='suivant'
                    stateGroup3.state ='suivant'
                    stateGroup4.state ='suivant'
                    stateGroup5.state ='suivant'
                    stateGroup6.state ='suivant'
                    stateGroup7.state ='suivant'
                    stateGroup8.state ='suivant'
                    stateGroup9.state ='suivant'
                    stateGroup10.state ='suivant'
                    stateGroup11.state ='suivant'
                    stateGroup12.state ='suivant'
                    stateGroup13.state ='suivant'
                    stateGroup14.state ='suivant'
                    stateGroup15.state ='suivant'
                } else {
                    stateGroup0.state ='suivant2'
                    stateGroup1.state ='suivant2'
                    stateGroup2.state ='suivant2'
                    stateGroup3.state ='suivant2'
                    stateGroup4.state ='suivant2'
                    stateGroup5.state ='suivant2'
                    stateGroup6.state ='suivant2'
                    stateGroup7.state ='suivant2'
                    stateGroup8.state ='suivant2'
                    stateGroup9.state ='suivant2'
                    stateGroup10.state ='suivant2'
                    stateGroup11.state ='suivant2'
                    stateGroup12.state ='suivant2'
                    stateGroup13.state ='suivant2'
                    stateGroup14.state ='suivant2'
                    stateGroup15.state ='suivant2'
                }
                break;
            case Qt.Key_Down:
                damier.mouvement(2);
                if (damier.controleQML === 1){
                    stateGroup0.state ='suivant'
                    stateGroup1.state ='suivant'
                    stateGroup2.state ='suivant'
                    stateGroup3.state ='suivant'
                    stateGroup4.state ='suivant'
                    stateGroup5.state ='suivant'
                    stateGroup6.state ='suivant'
                    stateGroup7.state ='suivant'
                    stateGroup8.state ='suivant'
                    stateGroup9.state ='suivant'
                    stateGroup10.state ='suivant'
                    stateGroup11.state ='suivant'
                    stateGroup12.state ='suivant'
                    stateGroup13.state ='suivant'
                    stateGroup14.state ='suivant'
                    stateGroup15.state ='suivant'
                } else {
                    stateGroup0.state ='suivant2'
                    stateGroup1.state ='suivant2'
                    stateGroup2.state ='suivant2'
                    stateGroup3.state ='suivant2'
                    stateGroup4.state ='suivant2'
                    stateGroup5.state ='suivant2'
                    stateGroup6.state ='suivant2'
                    stateGroup7.state ='suivant2'
                    stateGroup8.state ='suivant2'
                    stateGroup9.state ='suivant2'
                    stateGroup10.state ='suivant2'
                    stateGroup11.state ='suivant2'
                    stateGroup12.state ='suivant2'
                    stateGroup13.state ='suivant2'
                    stateGroup14.state ='suivant2'
                    stateGroup15.state ='suivant2'
                }
                break;
            case Qt.Key_Left:
                damier.mouvement(3);
                if (damier.controleQML === 1){
                    stateGroup0.state ='suivant'
                    stateGroup1.state ='suivant'
                    stateGroup2.state ='suivant'
                    stateGroup3.state ='suivant'
                    stateGroup4.state ='suivant'
                    stateGroup5.state ='suivant'
                    stateGroup6.state ='suivant'
                    stateGroup7.state ='suivant'
                    stateGroup8.state ='suivant'
                    stateGroup9.state ='suivant'
                    stateGroup10.state ='suivant'
                    stateGroup11.state ='suivant'
                    stateGroup12.state ='suivant'
                    stateGroup13.state ='suivant'
                    stateGroup14.state ='suivant'
                    stateGroup15.state ='suivant'
                } else {
                    stateGroup0.state ='suivant2'
                    stateGroup1.state ='suivant2'
                    stateGroup2.state ='suivant2'
                    stateGroup3.state ='suivant2'
                    stateGroup4.state ='suivant2'
                    stateGroup5.state ='suivant2'
                    stateGroup6.state ='suivant2'
                    stateGroup7.state ='suivant2'
                    stateGroup8.state ='suivant2'
                    stateGroup9.state ='suivant2'
                    stateGroup10.state ='suivant2'
                    stateGroup11.state ='suivant2'
                    stateGroup12.state ='suivant2'
                    stateGroup13.state ='suivant2'
                    stateGroup14.state ='suivant2'
                    stateGroup15.state ='suivant2'
                }
                break;
            case Qt.Key_Right:
                damier.mouvement(4);
                if (damier.controleQML === 1){
                    stateGroup0.state ='suivant'
                    stateGroup1.state ='suivant'
                    stateGroup2.state ='suivant'
                    stateGroup3.state ='suivant'
                    stateGroup4.state ='suivant'
                    stateGroup5.state ='suivant'
                    stateGroup6.state ='suivant'
                    stateGroup7.state ='suivant'
                    stateGroup8.state ='suivant'
                    stateGroup9.state ='suivant'
                    stateGroup10.state ='suivant'
                    stateGroup11.state ='suivant'
                    stateGroup12.state ='suivant'
                    stateGroup13.state ='suivant'
                    stateGroup14.state ='suivant'
                    stateGroup15.state ='suivant'
                } else {
                    stateGroup0.state ='suivant2'
                    stateGroup1.state ='suivant2'
                    stateGroup2.state ='suivant2'
                    stateGroup3.state ='suivant2'
                    stateGroup4.state ='suivant2'
                    stateGroup5.state ='suivant2'
                    stateGroup6.state ='suivant2'
                    stateGroup7.state ='suivant2'
                    stateGroup8.state ='suivant2'
                    stateGroup9.state ='suivant2'
                    stateGroup10.state ='suivant2'
                    stateGroup11.state ='suivant2'
                    stateGroup12.state ='suivant2'
                    stateGroup13.state ='suivant2'
                    stateGroup14.state ='suivant2'
                    stateGroup15.state ='suivant2'
                }
                break;
            }
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
            text: damier.scoreValQML
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
            text: damier.bestValQML
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

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: damier.new_game()
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

    Rectangle {
        function change_op(a) {
            if (a==true){
                return 1;
            }
            else{
                return 0.5;
            }


        }

        id: rectangle16
        x: 35
        y: 190
        width: 410
        height: 410
        opacity: change_op(damier.overBoolQML)
        border.color: "#00000000"

    }

    Rectangle {
        function change_op(a) {
            if (a==true){
                return 1;
            }
            else{
                return 0;
            }
        }

        id: rectangle17
        x: -5
        y: 4
        width: 174
        height: 92
        color: "#f67b13"
        opacity: change_op(damier.overBoolQML)
        anchors.horizontalCenter: rectangle16.horizontalCenter
        Text {
            id: text5
            color: "#ffffff"
            text: qsTr("GAME OVER")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            font.pixelSize: 24
            anchors.fill: parent
        }
        anchors.verticalCenter: rectangle16.verticalCenter
    }

    Rectangle {
        id: retourner
        y: 157
        width: 37
        height: 27
        color: "#8e7a67"
        anchors.left: grille.left
        anchors.leftMargin: 0
        anchors.bottom: grille.top
        anchors.bottomMargin: 10

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            onClicked: damier.state_retourner()

            Image {
                id: image
                x: 5
                y: 5
                anchors.rightMargin: 5
                anchors.leftMargin: 5
                anchors.bottomMargin: 5
                anchors.topMargin: 5
                anchors.fill: parent
                source: "left-arrow.png"
            }
        }
    }

    Rectangle {
        id: avancer
        y: 159
        width: 37
        height: 27
        color: "#8e7a67"
        anchors.leftMargin: 10
        anchors.bottom: retourner.bottom
        anchors.left: retourner.right
        anchors.bottomMargin: 0

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
            onClicked: damier.state_avancer()

            Image {
                id: image1
                x: 5
                y: 5
                anchors.rightMargin: 5
                anchors.leftMargin: 5
                anchors.bottomMargin: 5
                anchors.topMargin: 5
                anchors.fill: parent
                source: "right-arrow.png"
            }
        }
    }




}

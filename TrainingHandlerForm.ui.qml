import QtQuick 2.4

Item {
    id: trainingHandlerForm
    width: 800
    height: 640

    property alias exerciseOption3Property: exerciseOption3
    property alias exerciseOption2Property: exerciseOption2
    property alias exerciseOption1Property: exerciseOption1

    property alias mouseExe3Property: mouseExe3
    property alias mouseExe2Property: mouseExe2
    property alias mouseExe1Property: mouseExe1

    property alias txtExe1Property: txtExe1
    property alias imgPractice1Property: imgPractice1

    Column {
        id: column

        Rectangle {
            id: exerciseOption3
            width: trainingHandlerForm.width
            height: trainingHandlerForm.height / 3
            color: "#ffffff"

            Image {
                id: imgPractice3
                x: 103
                y: 37
                width: 140
                height: 140
                z: 1
                source: "Image/Locked_Practice.png"
            }

            Text {
                id: txtExe3
                x: 264
                y: 37
                width: 223
                height: 140
                text: qsTr("Text")
                font.pixelSize: 12
            }

            MouseArea {
                id: mouseExe3
                anchors.fill: parent
                hoverEnabled: true
            }
        }

        Rectangle {
            id: exerciseOption2
            width: trainingHandlerForm.width
            height: trainingHandlerForm.height / 3
            color: "#ffffff"

            Image {
                id: imgPractice2
                x: 102
                y: 37
                width: 140
                height: 140
                z: 2
                source: "Image/Locked_Practice.png"
            }

            Text {
                id: txtExe2
                x: 262
                y: 37
                width: 226
                height: 140
                text: qsTr("Text")
                font.pixelSize: 12
            }

            MouseArea {
                id: mouseExe2
                anchors.fill: parent
                hoverEnabled: true
            }
        }

        Rectangle {
            id: exerciseOption1
            width: trainingHandlerForm.width
            height: trainingHandlerForm.height / 3
            color: "#ffffff"

            Image {
                id: imgPractice1
                x: 103
                y: 37
                width: 140
                height: 140
                z: 2
                source: "Image/Locked_Practice.png"
            }

            Text {
                id: txtExe1
                x: 261
                y: 37
                width: 232
                height: 140
                text: qsTr("Text")
                font.pixelSize: 12
            }

            MouseArea {
                id: mouseExe1
                anchors.fill: parent
                hoverEnabled: true
            }
        }
    }
    states: [
        State {
            name: "State1"

            PropertyChanges {
                target: imgPractice1
                source: "Image/Practice1.png"
            }

            PropertyChanges {
                target: txtExe1
                text: "Hello"
                font.family: "Arial"
            }
        }
    ]


}

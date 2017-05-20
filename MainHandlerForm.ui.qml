import QtQuick 2.4
import QtGraphicalEffects 1.0

Item {
    id: mainHandlerForm
    width: 800
    height: 640

    property alias trainingOptionProperty: trainingOption
    property alias performanceOptionProperty: performanceOption
    property alias settingOptionProperty: settingOption

    property alias mouseArea1Property: mouseArea1
    property alias mouseArea2Property: mouseArea2
    property alias mouseArea3Property: mouseArea3

    property alias glowArea1Color: glowArea1.color
    property alias glowArea1Property: glowArea1


    Column {
        id: column
        anchors.fill: parent

        Rectangle {
            id: trainingOption
            width: mainHandlerForm.width
            height: mainHandlerForm.height / 3
            color: "#ffffff"

            Image {
                id: imgTrain
                x: 263
                y: 57
                width: 100
                height: 100
                source: "Image/Active_Icon.png"
            }

            Text {
                id: txtTrain
                x: 385
                y: 57
                width: 201
                height: 100
                text: qsTr("TRAINING")
                font.pixelSize: 12
            }
            MouseArea {
                id: mouseArea1
                anchors.fill:parent
                hoverEnabled: true
            }
            Glow{
                id: glowArea1
            }
        }

        Rectangle {
            id: performanceOption
            width: mainHandlerForm.width
            height: mainHandlerForm.height / 3
            color: "#ffffff"

            Image {
                id: imgPerf
                x: 260
                y: 57
                width: 100
                height: 100
                source: "Image/achivement.png"
            }

            Text {
                id: txtPerf
                x: 381
                y: 57
                width: 203
                height: 100
                text: qsTr("ACHIEVEMENT")
                font.pixelSize: 12
            }

            MouseArea {
                id: mouseArea2
                anchors.fill:parent
                hoverEnabled: true
            }
        }

        Rectangle {
            id: settingOption
            width: mainHandlerForm.width
            height: mainHandlerForm.height / 3
            color: "#ffffff"

            Image {
                id: imgSet
                x: 268
                y: 57
                width: 100
                height: 100
                source: "Image/Setting.png"
            }

            Text {
                id: txtSet
                x: 389
                y: 57
                width: 195
                height: 100
                text: qsTr("SETTING")
                font.pixelSize: 12
            }

            MouseArea {
                id: mouseArea3
                anchors.fill:parent
                hoverEnabled: true
            }
        }
    }
}

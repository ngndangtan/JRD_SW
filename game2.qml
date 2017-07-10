import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: item_game2
    width: 800
    height: 640


    MouseArea {
        anchors.fill:parent
        hoverEnabled: true
    }
    Rectangle
    {
        anchors.fill: parent
        color: "yellow"
        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onPressed: {
                mainHandlerForm.train_exer3=true;
                mainHandlerForm.train_exer2=false;
                trainingPageLoader.source="TrainingHandler.qml";
            }
        }
    }
    Image {
        id: back
        source: "Image/back_button.png"
        width: parent.width/15
        height: parent.height/12
        x: parent.width- width
        y: parent.y
        visible: true
        MouseArea{
            id:mouse_back_bt
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {
                back.source = "Image/back_button_onenter.png";
            }
            onExited: {
               back.source = "Image/back_button.png";
            }
            onPressed:
            {
                back.source = "Image/back_button_onclick.png";
                console.log("Back");
                trainingPageLoader.source="TrainingHandler.qml";
            }
        }
    }
    Loader
    {
        id:trainingPageLoader
        anchors.fill:parent
        focus: true
    }

}















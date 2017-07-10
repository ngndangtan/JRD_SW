import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: item_rehab
    width: 800
    height: 640

    property int position:0
    property int pre_position:0
    property int count : 0
    property int set_goal:1
    property bool status_pic :false
    property alias count_forward: item_rehab.count
    property alias status_game1:item_rehab.status_pic

    MouseArea {
        anchors.fill:parent
        hoverEnabled: true
    }
    //----------------------------------
    //add key board ->done
    //focus: true
    //Keys.onPressed:  {
    //   if (event.key === Qt.Key_Backspace){
    //        console.log("Back");
     //       event.accepted = true;
     //       trainingPageLoader.source="TrainingHandler.qml";
     //   }
     // }
    //----------------------------------
    Image {
        anchors.fill: parent
        id: bgr_img
        visible: true
        source: "Image/starscream.png"

        Text {
            id: counter
            font.pointSize: 30
            x:parent.width*4/5
            y:height/2
            color: "blue"
            text: count.toLocaleString();
            font.family: "Segoe Script"
            font.bold: true
        }
        Text {
            id: goal
            font.pointSize: 30
            x:parent.width*4/5 +width
            y:height/2
            color: "yellow"
            text: set_goal.toLocaleString();
            font.family: "Segoe Script"
            font.bold: true
        }


        Rectangle {
            id: keyboard1
            x: parent.width*4/16
            y: parent.height*1/32
            width: parent.width*1/4
            height: parent.height*1/16
            color: "#ffffff"
            radius: 10
            border.width: 3
            opacity: 1
            transformOrigin: Item.Center

            MouseArea {
                anchors.fill:parent
                hoverEnabled: true
                onEntered:
                {
                    image.source="Image/extension.png";
                    parent.color="#bdd7ee";
                    item_rehab.position=1;
                    check_status();
                }
                onExited: parent.color="white"
            }
        }
        Rectangle{
        id: keyboard2
        x: parent.width*3/16
        y: parent.height*5/32
        width: parent.width*1/4
        height: parent.height*1/16
        color: "#ffffff"
        radius: 10
        border.width: 3
        opacity: 1
        transformOrigin: Item.Center
        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered:
            {
                image.source="Image/extension.png";
                parent.color="#bdd7ee";
                item_rehab.position=1;
                check_status();
            }
            onExited: parent.color="white"
        }
        }
        Rectangle{
        id: keyboard3
        x: parent.width*2/16
        y: parent.height*9/32
        width: parent.width*1/4
        height: parent.height*1/16
        color: "#ffffff"
        radius: 10
        border.width: 3
        opacity: 1
        transformOrigin: Item.Center
        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered:
            {
                image.source="Image/extension.png";
                parent.color="#bdd7ee";
                item_rehab.position=1;
                check_status();
            }
            onExited: parent.color="white"
        }
        }
        Rectangle{
        id: keyboard4
        x: parent.width*1/16
        y: parent.height*13/32
        width: parent.width*1/4
        height: parent.height*1/16
        color: "#ffffff"
        radius: 10
        border.width: 3
        opacity: 1
        transformOrigin: Item.Center
        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered:
            {
                image.source="Image/neutral.png";
                parent.color="#bdd7ee";
                //item_rehab=0;
            }
            onExited: parent.color="white"
        }
        }
        Rectangle{
        id: keyboard5
        x: parent.width*1/16
        y: parent.height*17/32
        width: parent.width*1/4
        height: parent.height*1/16
        color: "#ffffff"
        radius: 10
        border.width: 3
        opacity: 1
        transformOrigin: Item.Center
        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered:
            {
                image.source="Image/neutral.png";
                parent.color="#bdd7ee";
                //item_rehab=0;
            }
            onExited: parent.color="white"
        }
        }
        Rectangle{
        id: keyboard6
        x: parent.width*2/16
        y: parent.height*21/32
        width: parent.width*1/4
        height: parent.height*1/16
        color: "#ffffff"
        radius: 10
        border.width: 3
        opacity: 1
        transformOrigin: Item.Center
        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered:
            {
                image.source="Image/flexion.png";
                parent.color="#bdd7ee";
                item_rehab.position=2;
                check_status();
            }
            onExited: parent.color="white"
        }
        }
        Rectangle{
        id: keyboard7
        x: parent.width*3/16
        y: parent.height*25/32
        width: parent.width*1/4
        height: parent.height*1/16
        color: "#ffffff"
        radius: 10
        border.width: 3
        opacity: 1
        transformOrigin: Item.Center
        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered:
            {
                image.source="Image/flexion.png";
                parent.color="#bdd7ee";
                item_rehab.position=2;
                check_status();
            }
            onExited: parent.color="white"
        }
        }
        Rectangle{
        id: keyboard8
        x: parent.width*4/16
        y: parent.height*29/32
        width: parent.width*1/4
        height: parent.height*1/16
        color: "#ffffff"
        radius: 10
        border.width: 3
        opacity: 1
        transformOrigin: Item.Center
        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered:
            {
                image.source="Image/flexion.png";
                parent.color="#bdd7ee";
                item_rehab.position=2;
                check_status();
            }
            onExited: parent.color="white"
        }
        }
        Image {
            id: image
            x: parent.width - width
            y: parent.height/3
            visible: true
            source: "Image/neutral.png"
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
        Image {
            id: finish_game
            source: "Image/Congrats_1.jpg"
            x: parent.width/4
            y: parent.height/5+height/2
            visible:status_pic
            MouseArea{
                id:finish_pic
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    finish_game.source = "Image/Congrats.jpg";
                }
                onExited: {
                    finish_game.source = "Image/Congrats_1.jpg";
                }
                onPressed:
                {
                    mainHandlerForm.train_exer2=true;
                    mainHandlerForm.train_exer1=false;
                    trainingPageLoader.source="TrainingHandler.qml";
                }
            }
        }
    }
    Loader
    {
        id:trainingPageLoader
        anchors.fill:parent
        focus: true
    }

    function check_status()
    {
        if(position===1)
        {

            if(pre_position===1)
            {
                console.log("up");
            }
            else if(pre_position===2)
            {
                console.log("down");
                count=count+1
            }
            else{}
        }
        if(position===2)
        {
            if(pre_position===1)
            {
                console.log("up");
            }
            else if(pre_position===2)
            {
                console.log("down");
            }
            else{}
        }

        pre_position=position;
        if(count>=set_goal)
        {
            status_pic =true;


        }
        if(count<set_goal)
        {
            status_pic =false;


        }
        status_game1=status_pic
    }
}















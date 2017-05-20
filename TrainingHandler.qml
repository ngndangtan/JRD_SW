import QtQuick 2.4

Rectangle {
    width: 800
    height: 640


    TrainingHandlerForm
    {
        mouseExe3Property.onEntered:
        {
            exerciseOption3Property.color="#ffe699"
        }
        mouseExe3Property.onExited:exerciseOption3Property.color = "white"

        mouseExe2Property.onEntered:exerciseOption2Property.color = "#bdd7ee"
        mouseExe2Property.onExited:exerciseOption2Property.color = "white"

        mouseExe1Property.onEntered:{
            exerciseOption1Property.color = "#c5e0b4"

        }
        mouseExe1Property.onExited:exerciseOption1Property.color = "white"

        transitions: [
                Transition {
                    from: "base state"
                    to: "State1"
                    ColorAnimation { target: imgPractice1Property; duration: 100}
                }
            ]

    }
    Loader{
        id:pageLoader
        anchors.fill:parent
    }
}

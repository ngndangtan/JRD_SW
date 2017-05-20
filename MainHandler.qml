import QtQuick 2.4
import QtGraphicalEffects 1.0

Item {
    width: 800
    height: 640
    id: mainMenuForm

        /********************************
         * Training Menu
         *******************************/
    MainHandlerForm
    {
        mouseArea1Property.onEntered:
        {
            trainingOptionProperty.color="#ffe699"
            glowArea1Property.spread = 1.0
            glowArea1Property.radius = 3
            glowArea1Property.transparentBorder = true
            glowArea1Property.color = "red"

            glowArea1Property.source = trainingOptionProperty
        }
        mouseArea1Property.onExited:trainingOptionProperty.color = "white"
        mouseArea1Property.onPressed:pageLoader.source="TrainingHandler.qml"

        mouseArea2Property.onEntered:performanceOptionProperty.color = "#bdd7ee"
        mouseArea2Property.onExited:performanceOptionProperty.color = "white"
        mouseArea2Property.onPressed:pageLoader.source="PerformanceHandler.qml"

        mouseArea3Property.onEntered:settingOptionProperty.color = "#c5e0b4"
        mouseArea3Property.onExited:settingOptionProperty.color = "white"
        mouseArea3Property.onPressed:pageLoader.source="SettingHandler.qml"
    }

    Loader
    {
        id:pageLoader
        anchors.fill:parent
    }
}



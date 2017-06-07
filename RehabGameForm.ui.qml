import QtQuick 2.4

Item {
    width: 800
    height: 640

    Rectangle {
        id: keyboard1
        x: 114
        y: 21
        width: 280
        height: 60
        color: "#ffffff"
        radius: 1
        border.width: 3
        opacity: 1
        transformOrigin: Item.Center

        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered: parent.color="#bdd7ee"
            onExited: parent.color="white"
        }
    }

    Rectangle {
        id: keyboard2
        x: 100
        y: 97
        width: 280
        height: 60
        color: "#ffffff"
        radius: 1
        opacity: 1
        transformOrigin: Item.Center
        border.width: 3

        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered: parent.color="#bdd7ee"
            onExited: parent.color="white"
        }
    }

    Rectangle {
        id: keyboard3
        x: 79
        y: 175
        width: 280
        height: 60
        color: "#ffffff"
        radius: 1
        opacity: 1
        transformOrigin: Item.Center
        border.width: 3

        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered: parent.color="#bdd7ee"
            onExited: parent.color="white"
        }
    }

    Rectangle {
        id: keyboard4
        x: 60
        y: 252
        width: 280
        height: 60
        color: "#ffffff"
        radius: 1
        opacity: 1
        transformOrigin: Item.Center
        border.width: 3

        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered: parent.color="#bdd7ee"
            onExited: parent.color="white"
        }
    }

    Rectangle {
        id: keyboard5
        x: 60
        y: 327
        width: 280
        height: 60
        color: "#ffffff"
        radius: 1
        opacity: 1
        transformOrigin: Item.Center
        border.width: 3

        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered: parent.color="#bdd7ee"
            onExited: parent.color="white"
        }
    }

    Rectangle {
        id: keyboard6
        x: 79
        y: 403
        width: 280
        height: 60
        color: "#ffffff"
        radius: 1
        opacity: 1
        transformOrigin: Item.Center
        border.width: 3

        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered: parent.color="#bdd7ee"
            onExited: parent.color="white"
        }
    }

    Rectangle {
        id: keyboard7
        x: 100
        y: 482
        width: 280
        height: 60
        color: "#ffffff"
        radius: 1
        opacity: 1
        transformOrigin: Item.Center
        border.width: 3

        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered: parent.color="#bdd7ee"
            onExited: parent.color="white"
        }
    }

    Rectangle {
        id: keyboard8
        x: 120
        y: 558
        width: 280
        height: 60
        color: "#ffffff"
        radius: 1
        opacity: 1
        transformOrigin: Item.Center
        border.width: 3

        MouseArea {
            anchors.fill:parent
            hoverEnabled: true
            onEntered: parent.color="#bdd7ee"
            onExited: parent.color="white"
        }
    }

    Image {
        id: image
        x: 436
        y: 267
        width: 300
        height: 85
        visible: true
        source: "Image/neutral.png"
    }
}

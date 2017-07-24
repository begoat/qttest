import QtQuick 2.0

Rectangle {
    id: root
    width: usernameIcon.paintedWidth + 100 // can dynmaic change according to the paintedWidth of username
    border.width: 1
    border.color: "#979797"
    color: "transparent"
    anchors.top: parent.top
    anchors.right: parent.right
    anchors.verticalCenter: parent.verticalCenter
    property alias username: usernameIcon.text
    Text {
        id: accountIcon
        text: "\ue605"
        color: "white"
        font.pixelSize: 59
        font.family: iconset.name
        anchors.right: usernameIcon.left
        anchors.rightMargin: 21
        anchors.verticalCenter: parent.verticalCenter
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {
                console.log("Entered")
            }
            onExited: {
                console.log("Exited")
            }
        }
    }

    Text {
        id: usernameIcon
        text: "Username"
        color: "white"
        height: 50
        font.bold: true
        font.pointSize: 40
        anchors.right: parent.right
        anchors.rightMargin: 9
        anchors.verticalCenter: parent.verticalCenter
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {
                console.log("Entered")
            }
            onExited: {
                console.log("Exited")
            }
        }
    }
}

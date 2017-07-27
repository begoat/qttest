import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.2

Page {
    id: root
    contentWidth: 1920
    contentHeight: 1080

    Rectangle {
        anchors.left: parent.left
        anchors.leftMargin: 53
        anchors.right: parent.right
        anchors.rightMargin: 55
        y: 135
        width: root.contentWidth
        height: root.contentHeight - 190
        color: "#D8D8D8"

        Component {
            id: contactDelegate
            Item {
                id: item
                width: 200 ; height: 270
                Column {
                    anchors.fill: parent
                    Image {
                        source: location; anchors.horizontalCenter: parent.horizontalCenter
                        width: item.width; height: item.width
                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            onEntered: {
                                console.log("Entered the Image")
                            }
                            onExited:  {
                                console.log("Exit the Image")
                            }
                            onDoubleClicked: {
                                console.log("double Click the Image")
                            }
                        }
                    }
                    Text {
                        id: gameName
                        text: name
                        font.pixelSize: 15
                        anchors.horizontalCenter: parent.horizontalCenter
                        NumberAnimation {
                            id: sizeTo30
                            target: gameName
                            property: "font.pixelSize"
                            to: 30
                            duration: 200
                            easing.type: Easing.InOutCubic
                        }
                        NumberAnimation {
                            id: sizeTo15
                            target: gameName
                            property: "font.pixelSize"
                            to: 15
                            duration: 200
                            easing.type: Easing.InOutCubic
                        }
                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            onEntered: {
                                sizeTo30.running = true
                            }
                            onExited:  {
                                sizeTo15.running = true
                            }
                        }
                    }
                }
            }
        }

        Rectangle{
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 30
            anchors.topMargin: 37
            GridView {
                id: grid
                anchors.fill: parent
                cellWidth: 248 // item.width + 48 (spacing)
                cellHeight: 295
                model: GameModel {}
                delegate: contactDelegate
                ScrollBar.vertical: ScrollBar {
                    id: scroolBar
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        propagateComposedEvents: true
                        onClicked: mouse.accepted = false
                        onPressed: mouse.accepted = false;
                        onReleased: mouse.accepted = false;
                        onDoubleClicked: mouse.accepted = false;
                        onPositionChanged: mouse.accepted = false;
                        onPressAndHold: mouse.accepted = false;
                    }
                }
            }
        }


    }

}

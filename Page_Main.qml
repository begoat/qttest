import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.2

Page {
    id: root
    contentWidth: Screen.desktopAvailableWidth
    contentHeight: Screen.desktopAvailableHeight

    Rectangle {
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.right: parent.right
        anchors.rightMargin: 50
        y: 135
        width: root.contentWidth
        height: root.contentHeight - 135
        color: "#D8D8D8"
        Text {
           text: "This is a test"
        }
    }

}

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
        Text {
            text: "This is Page TWO"
            font.pixelSize: 50
        }
    }
}

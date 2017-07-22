import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.2

Page {
    id: root
    contentWidth: Screen.desktopAvailableWidth
    contentHeight: Screen.desktopAvailableHeight
    Rectangle {
        y: 59
        width: root.contentWidth
        height: root.contentHeight - 59
        color: "#D8D8D8"
        Text {
           text: "This is a test"
        }
    }
}

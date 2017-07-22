import QtQuick 2.7
import QtQuick.Controls 2.0

TabButton {
    id: root
    width: 151
    height: 59
    padding: 0 // 完全覆盖 默认不是0
    property alias texttext: texttext
    property alias imageimage: imageimage
    contentItem: Item {
        width: root.width
        height: root.height
        Image {
            id: imageimage
            anchors.fill: parent
            source: "qrc:/image/pic1.jpg"
            clip: true
            opacity: 0.8
        }
        Text {
            id: texttext
            anchors.fill: parent
            text: "111"
            font.family: "Times"
            font.weight: Font.Black
            font.bold: true
            font.pointSize: 20
        }

    }
    background: Rectangle {
            opacity: enabled ? 1 : 0.3
            radius: 2
//            border.width: 2
    }
}

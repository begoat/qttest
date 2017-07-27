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
        anchors.fill: parent
        width: parent.width
        height: parent.height
        Image { // 可拓展性，艺术字直接放图片
            id: imageimage
            source: ""
            clip: true
            opacity: 0
        }
        Text {
            id: texttext
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "111"
//            font.family: "Times"
            color: "#7ED321"
            font.pixelSize:  30

            PropertyAnimation {
                id: colortowhite;
                target: texttext;
                property: "color";
                to: "#66B2FF"
                duration: 200
                easing.type: Easing.InOutCubic
            }
            PropertyAnimation {
                id: styletosunken;
                target: texttext;
                property: "style";
                to: "Text.Sunken"
                duration: 200
                easing.type: Easing.InOutCubic
            }
            PropertyAnimation {
                id: colortogreen;
                target: texttext;
                property: "color";
                to: "#7ED321"
                duration: 200
                easing.type: Easing.InOutCubic
            }
            PropertyAnimation {
                id: styletonormal;
                target: texttext;
                property: "style";
                to: "Text.Normal"
                duration: 200
                easing.type: Easing.InOutCubic
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                propagateComposedEvents: true
                onEntered: { // 进入减速曲线
                    colortowhite.running = true
                    styletosunken.running = true
                }
                onExited: {  // 退出加速曲线
                    colortogreen.running = true
                    styletonormal.running = true
                }
                onClicked: mouse.accepted = false
                onPressed: mouse.accepted = false;
                onReleased: mouse.accepted = false;
                onDoubleClicked: mouse.accepted = false;
                onPositionChanged: mouse.accepted = false;
                onPressAndHold: mouse.accepted = false;
            }
        }

    }
    background: Rectangle {
        border.width: 1
        color:"#3E3E3E"
        border.color: "#979797"
    }
}

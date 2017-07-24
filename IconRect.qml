import QtQuick 2.0

Rectangle {
    width: texttext.paintedWidth
    height: texttext.paintedHeight
    color: "red"
    property alias iconcode: texttext.text
    Text {
        id: texttext
        text: "Demo"
        color: "white"
        font.pixelSize: 59
        font.family: iconset.name
        // haven't know more about the effect.
        NumberAnimation {
            id: sizeTo65
            target: texttext
            property: "font.pixelSize"
            to: 65
            duration: 200
            easing.type: Easing.OutQuad
        }
        PropertyAnimation {
            id: colortoRed;
            target: texttext;
            property: "color";
            to: "red"
            duration: 200
            easing.type: Easing.OutQuad
        }
        NumberAnimation {
            id: sizeTo50
            target: texttext
            property: "font.pixelSize"
            to: 50
            duration: 200
            easing.type: Easing.InQuad
        }
        PropertyAnimation {
            id: colortoWhite;
            target: texttext;
            property: "color";
            to: "white"
            duration: 200
            easing.type: Easing.InQuad
        }
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {
                sizeTo65.running = true
                colortoRed.running = true
            }
            onExited: {
                sizeTo50.running = true
                colortoWhite.running = true
            }
        }
    }
}

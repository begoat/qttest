import QtQuick 2.0

Rectangle {
    width: 640
    height: 360
    color: "grey"
    PathView {
        id: view
        width: parent.width
        height: parent.height + y
        y: -33
        focus: true
        Keys.onLeftPressed: decrementCurrentIndex()
        Keys.onRightPressed: incrementCurrentIndex()
        preferredHighlightBegin: 0
        preferredHighlightEnd: 0
        highlightRangeMode: PathView.StrictlyEnforceRange
        model: ModelType {}
        delegate: Image {
            source: iconSource
            width: 64
            height: 64
            scale: 4. * y / parent.height
            z: y
            smooth: true
            opacity: scale / 2.
        }
        path: EllipseType {
            width: view.width
            height: view.height
        }
    }

    Text {
     id: label
     text: view.model.get(view.currentIndex).title
     color: "paleturquoise"
     font.pixelSize: 16
     font.bold: true
     anchors.horizontalCenter: parent.horizontalCenter
     anchors.bottom: parent.bottom
    }
}

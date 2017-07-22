import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Window 2.2

ApplicationWindow {
    id: root
    visible: true
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    title: qsTr("Game Center Dev")

    header:
        Row {
        width: root.width

        TabBar {
            id: tabBar_header
            currentIndex: swipeView.currentIndex
            anchors.left: parent.left
            background: Rectangle {
                color: "#3E3E3E"
            }

            CustomTabButton {
                texttext.text: "游戏库"
                //                imageimage.source: ""
                //                imageimage.opacity: 0.3
            }
            CustomTabButton {
                texttext.text: "商城"
                //                imageimage.source: ""
                //                imageimage.opacity: 0.3
            }
            CustomTabButton {
                texttext.text: "社区"
                //                imageimage.source: ""
                //                imageimage.opacity: 0.3
            }
            CustomTabButton {
                texttext.text: "创意工坊"
                //                imageimage.source: ""
                //                imageimage.opacity: 0.3
            }
        }
        Row {
            anchors.right:parent.right
            spacing: 20
            Image {
                source: "qrc:/image/ic_mail_outline_white_48dp_2x.png"
                width: 50
                height: 50
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("1")
                    }
                }
            }

            Image {
                source: "qrc:/image/ic_dashboard_white_48dp_2x.png"
                width: 50
                height: 50
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("2")
                    }
                }
            }

            Image {
                source: "qrc:/image/ic_settings_white_48dp_2x.png"
                width: 50
                height: 50
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("3")
                    }
                }
            }

            Image {
                source: "qrc:/image/ic_account_circle_white_24dp_2x.png"
                width: 50
                height: 50
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("4")
                    }
                }
            }

            Text {
                text: "Username"
                font.family: "ubuntu"
                font.bold: true
                color: "white"
                font.pointSize: 40
                height: 50
            }

        }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar_header.currentIndex

        Page_Main{

        }
        Page_Store{

        }
        Page_Main{

        }
        Page_Main{

        }
    }
}

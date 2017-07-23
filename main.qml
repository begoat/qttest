import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Window 2.2

ApplicationWindow {
    id: root
    visible: true
    width: 1920
    height: 1080
    minimumWidth: 1300
    minimumHeight: 500
    title: qsTr("Game Center Dev")

    header:
        Item {
        anchors.left: parent.left
        anchors.right: parent.right
        Rectangle {
            width: root.width - 108
            height: 76
            color: "#3E3E3E"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 53
            anchors.rightMargin: 55
            Rectangle{
                width: 333
                height: 76
                color: "transparent"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                border.color: "#63FF00"
                border.width: 1
                Text {
                    color: "yellow"
                    font.pixelSize: 36
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    text: "Game Hall"
                }
            }
        }
        Rectangle {
            y: 76
            width: root.width - 108
            height: 59
            border.color: "#979797"
            border.width: 1
            color: "#3E3E3E"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 53
            anchors.rightMargin: 55
            Row {
                width: parent.width
                anchors.left: parent.left
                anchors.right: parent.right
                TabBar {
                    id: tabBar_header
                    currentIndex: swipeView.currentIndex
                    anchors.left: parent.left
                    CustomTabButton {
                        texttext.text: "游戏库"
                    }
                    CustomTabButton {
                        texttext.text: "商城"
                    }
                    CustomTabButton {
                        texttext.text: "社区"
                    }
                    CustomTabButton {
                        texttext.text: "创意工坊"
                    }
                }
                Row { // 有个警告 没事的吧 // image 要改 不仅仅是居中 还有动画 // 如果是多条站内信，需要自己设置一个动画
                    anchors.right:parent.right
                    spacing: 21
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

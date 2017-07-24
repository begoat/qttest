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
        Rectangle {
            id: title
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
                border.color: "#63FF00"
                border.width: 1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                Text {
                    text: "Game Hall"
                    color: "yellow"
                    font.pixelSize: 50
                    font.bold: true
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
        Rectangle {
            id: bar
            width: root.width - 108
            height: 59
            color: "#3E3E3E"
            border.color: "#979797"
            border.width: 1
            anchors.top: parent.top
            anchors.topMargin: 76
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 53
            anchors.rightMargin: 55
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
            Item {
                // 如果是多条站内信，需要自己设置一个动画
                id: iconlist
                height: 59
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                FontLoader { id: iconset; source:"qrc:/icontffset/Pe-icon-7-stroke.ttf" }
                Text {
                    id: mailIcon
                    text: "\ue639"
                    color: "white"
                    font.pixelSize: 50
                    font.family: iconset.name
                    anchors.verticalCenter: account.verticalCenter // both horizontalCenter and verticalCenter can define a line
                    anchors.horizontalCenter: account.left
                    anchors.horizontalCenterOffset: -130
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: {
                            console.log("Entered")
                            mailIcon.font.pixelSize = 65
                            mailIcon.color = "red"
                        }
                        onExited: {
                            console.log("Exited")
                        }
                    }
                }
                Text {
                    id: settingIcon
                    text: "\ue6c4"
                    color: "white"
                    font.pixelSize: 50
                    font.family: iconset.name
                    anchors.verticalCenter: account.verticalCenter // both horizontalCenter and verticalCenter can define a line
                    anchors.horizontalCenter: account.left
                    anchors.horizontalCenterOffset: -60
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: {
                            console.log("Entered")
                            settingIcon.font.pixelSize = 65
                            settingIcon.color = "red"
                        }
                        onExited: {
                            console.log("Exited")
                        }
                    }
                }
                Rectangle {
                    id: account
                    width: usernameIcon.paintedWidth + 100 // can dynmaic change according to the paintedWidth of username
                    border.width: 1
                    border.color: "#979797"
                    color: "transparent"
                    anchors.top: parent.top
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    Text {
                        id: accountIcon
                        text: "\ue605"
                        color: "white"
                        font.pixelSize: 50
                        font.family: iconset.name
                        anchors.right: usernameIcon.left
                        anchors.rightMargin: 21
                        anchors.verticalCenter: parent.verticalCenter
                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            onEntered: {
                                console.log("Entered")
                            }
                            onExited: {
                                console.log("Exited")
                            }
                        }
                    }

                    Text {
                        id: usernameIcon
                        text: "Username"
                        color: "white"
                        height: 50
                        font.bold: true
                        font.pointSize: 40
                        anchors.right: parent.right
                        anchors.rightMargin: 9
                        anchors.verticalCenter: parent.verticalCenter
                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            onEntered: {
                                console.log("Entered")
                            }
                            onExited: {
                                console.log("Exited")
                            }
                        }
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

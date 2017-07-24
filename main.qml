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
        anchors.top: parent.top
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
            width: root.width - 108
            height: 59
            border.color: "#979797"
            border.width: 1
            color: "#3E3E3E"
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
            Item {// 用 Row 的 话图标变大由于 spacing: 的 缘故 会影响到其他图标
                // 如果是多条站内信，需要自己设置一个动画
                id: iconlist
                height: 59
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                FontLoader {id: iconset; source:"qrc:/icontffset/Pe-icon-7-stroke.ttf"}
                Text {
                    id: mailIcon
                    anchors.right:account.left
                    anchors.rightMargin: 90
                    anchors.verticalCenter: parent.verticalCenter
                    text: "\ue639"
                    font.family: iconset.name
                    color: "white"
                    font.pixelSize: 50
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: {
                            console.log("Entered")
                            mailIcon.font.pixelSize = 80
                            mailIcon.color = "red"
                        }
                        onExited: {
                            console.log("Exited")
                        }
                    }
                }
                Item {
                    anchors.top: parent.top
                    //                    anchors.right: account.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: account.left
                    anchors.horizontalCenterOffset: -20
                    Text {
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        id: settingIcon
                        text: "\ue6c4"
                        font.family: iconset.name
                        //                        anchors.right: account.left
                        color: "white"
                        font.pixelSize: 50
                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            onEntered: {
                                console.log("Entered")
                                settingIcon.font.pixelSize = 80
                                settingIcon.color = "red"
                            }
                            onExited: {
                                console.log("Exited")
                            }
                        }
                    }
                }
                Rectangle {
                    id: account
                    width: usernameIcon.paintedWidth + 100 // indefinite because of the text pixelSize
                    anchors.top: parent.top
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    color: "transparent"
                    border.width: 1
                    border.color: "#979797"
                    Text {
                        id: accountIcon
                        text: "\ue605"
                        font.family: iconset.name
                        color: "white"
                        font.pixelSize: 50
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
                        font.bold: true
                        color: "white"
                        font.pointSize: 40
                        anchors.right: parent.right
                        anchors.rightMargin: 9
                        anchors.verticalCenter: parent.verticalCenter
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

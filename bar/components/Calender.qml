import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import "../../" as Root
import "../" as Bar
import "../modules"



Item{
    id: root
    property alias popupVisible: calendar.visible
    required property var anchorWindow
    property int month: 0
    
    

    PopupWindow{
        id:calendar
        anchor.window: root.anchorWindow
        anchor.rect.x: root.anchorWindow.width / 2 - implicitWidth / 2
        anchor.rect.y: root.anchorWindow.implicitHeight
        implicitWidth: 800
        implicitHeight: 600
        visible: false
        color: "transparent"
        onVisibleChanged: {
            if (visible) {
                month = Cal.currentMonth  
            }
        }
        Rectangle{
            anchors.fill: parent
            implicitHeight: calendar.implicitHeight
            implicitWidth: calendar.implicitWidth
            color: Root.Theme.dullpink
            bottomLeftRadius: Root.Theme.radius
            bottomRightRadius: Root.Theme.radius
            Rectangle{
                id: test
                anchors.fill: parent 
                anchors.margins: 28
                color: Root.Theme.main
                radius: Root.Theme.radius
                RowLayout {
                    anchors.fill: parent
                    anchors.topMargin: 35
                    Text {
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        leftPadding: 40
                        text: Cal.months[month]
                        font {
                            family: Root.Theme.fontFamily
                            pixelSize: 50
                        }
                    }
                    Item{
                        Layout.fillWidth: true
                    }
                    Rectangle{
                        Layout.alignment: Qt.AlignTop | Qt.AlignRight
                        Layout.rightMargin: 150
                        RowLayout{
                            spacing:20
                            Rectangle{
                                color: Root.Theme.spookymain
                                width: 50
                                height: 50
                                radius: 5
                                Text{
                                    text: "<"
                                    anchors.centerIn: parent
                                    font {
                                        family: Root.Theme.fontFamily
                                        pixelSize: 40
                                    }
                                }
                                MouseArea{
                                    id: mouse2
                                    anchors.fill: parent
                                    hoverEnabled: true
                                    cursorShape: Qt.PointingHandCursor
                                    onClicked: month = (month - 1 + 12) % 12
                                }
                            }
                            Rectangle{
                                color: mouse.containsMouse  ? Root.Theme.extraspookymain : Root.Theme.spookymain
                                width: 50
                                height: 50
                                radius: 5
                                Text {
                                    text: ">"
                                    anchors.centerIn: parent
                                    font {
                                        family: Root.Theme.fontFamily
                                        pixelSize: 40
                                    }
                                }
                                MouseArea{
                                    id: mouse
                                    anchors.fill: parent
                                    hoverEnabled: true
                                    cursorShape: Qt.PointingHandCursor
                                    onClicked: month = (month + 1) % 12
                                }
                            }
                        }
                    }   
                }
            }
        }
    }
}
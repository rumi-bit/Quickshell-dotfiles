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
    

    PopupWindow{
        id:calendar
        anchor.window: root.anchorWindow
        anchor.rect.x: root.anchorWindow.width / 2 - implicitWidth / 2
        anchor.rect.y: root.anchorWindow.implicitHeight
        implicitWidth: 800
        implicitHeight: 600
        visible: false
        color: "transparent"
        Rectangle{
            anchors.fill: parent
            implicitHeight: calendar.implicitHeight
            implicitWidth: calendar.implicitWidth
            color: Root.Theme.dullpink
            radius: Root.Theme.radius
            Rectangle{
                anchors.fill: parent 
                anchors.margins: 28
                color: Root.Theme.main2
                radius: Root.Theme.radius
                RowLayout {
                    anchors.fill: parent
                    Text {
                        anchors.left: parent.left
                        anchors.top: parent.top
                        leftPadding: 40
                        topPadding: 35
                        text: Cal.months[Cal.currentMonth]
                        font {
                        family: Root.Theme.fontFamily
                        pixelSize: 50
                        }
                    }
                    Item{
                        Layout.fillWidth: true
                    }
                    Rectangle{
                        anchors.right: parent.right
                        Text{
                            text: "<"
                            font {
                                family: Root.Theme.fontFamily
                                pixelSize: 30
                            }

                        }

                    }
                    Rectangle{
                        Text {
                            text: ">"
                            font {
                                family: Root.Theme.fontFamily
                                pixelSize: 30
                            }
                        }

                    }
                }
                

            }

        }
    }
}
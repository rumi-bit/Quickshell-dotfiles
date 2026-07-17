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
        onVisibleChanged: {
            if (visible) {
                Cal.month = Cal.currentMonth  
                Cal.firstDay()
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
                        text: Cal.months[Cal.month]
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
                                    onClicked: {
                                        Cal.month = (Cal.month - 1 + 12) % 12
                                        Cal.firstDay()
                                    }
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
                                    onClicked: {
                                        Cal.month = (Cal.month + 1) % 12
                                        Cal.firstDay()
                                    }
                                }
                            }
                        }
                    }   
                }
                RowLayout{
                    anchors.fill: parent
                    spacing: 14
                    Repeater{
                        id: day
                        model: Cal.days
                        delegate: Text{
                            text: modelData
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                            Layout.topMargin: 120
                            font {
                                family: Root.Theme.fontFamily
                                pixelSize: 17
                            }
                        }
                    }
                }
                Column {
                    spacing: 30
                    Repeater {
                        model: Math.ceil((Cal.monthLengths[Cal.month] + Cal.firstdayindex) / 7)
                        delegate: Row {
                            id: weekRow
                            spacing: 20
                            readonly property int rowIdx: index
                            Repeater {
                                model: 7
                                delegate: Rectangle {
                                    property int day: (weekRow.rowIdx * 7) + index - Cal.firstdayindex + 1
                                    width: 40
                                    height: 40
                                    color: Root.Theme.spookymain
                                    Text {
                                        id: number
                                        anchors.centerIn: parent
                                        text: (day >= 1 && day <= Cal.monthLengths[Cal.month]) ? day : ""
                                        font {
                                            family: Root.Theme.fontFamily
                                            pixelSize: 20
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
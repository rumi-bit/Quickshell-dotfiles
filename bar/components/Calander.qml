import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import "../../" as Root
import "../" as Bar



Item{
    id: root
    property alias popupVisible: calendar.visible
    required property var anchorWindow

    PopupWindow{
        id:calendar
        anchor.window: root.anchorWindow
        anchor.rect.x: root.anchorWindow.width / 2 - implicitWidth / 2
        anchor.rect.y: root.anchorWindow.implicitHeight
        implicitWidth: 600
        implicitHeight: 400
        visible: false
        Rectangle{
            anchors.fill: parent
            implicitHeight: calendar.implicitHeight
            implicitWidth: calendar.implicitWidth
            Rectangle{
                anchors.fill: parent
                implicitHeight: calendar.implicitHeight - 30
                implicitWidth: calendar.implicitWidth - 20
                Text {
                    text: Calander.currentMonth
                }

            }

        }
    }
}
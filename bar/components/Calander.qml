import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import "../../" as Root
import "../" as Bar



Item{
    id: root

    PopupWindow{
        id:calendar
        anchor.window: Bar.Bar.bar
        anchor.rect.x: bar.width / 2 - implicitWidth / 2
        anchor.rect.y: bar.implicitHeight
        implicitWidth: 200
        implicitHeight: 300
        visible: false
        dismissOnClick: true 
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
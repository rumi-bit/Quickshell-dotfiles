import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import "../../" as Root
import "" as Home



Item {
    id: clock
    implicitWidth: clockLabel.implicitWidth
    implicitHeight: clockLabel.implicitHeight
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter

    property string timeText: ""

    Process {
        id: dateProc
        command: ["date", "+%H:%M:%S"]
        running: true

        stdout: SplitParser {
            onRead: data => clock.timeText = data
        }
    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: dateProc.running = true
    }

    Text {
        id: clockLabel
        anchors.centerIn: parent
        text: clock.timeText
        color: Root.Theme.text
        font.family: Root.Theme.fontFamily
        font.pixelSize: Root.Theme.fontSizeLarge
    }
    MouseArea {
        id: mouse
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
                    
        onClicked: Home.Calander.calendar.visible = !Home.Calander.calendar.visible
    }
}

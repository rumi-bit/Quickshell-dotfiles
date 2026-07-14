import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import "../../" as Root



Item {
    id: clock
    implicitWidth: clockLabel.implicitWidth
    implicitHeight: clockLabel.implicitHeight

    property string timeText: ""

    Process {
        id: dateProc
        command: ["date", "+%a %b %d  %H:%M:%S"]
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
        font.pixelSize: Root.Theme.fontSize
    }
}

import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import "../../" as Root

// ── Clock widget ───────────────────────────────────────────────
// Runs `date` every second.  Replace with a Qt.formatDateTime binding
// once you're comfortable — the Process approach is a common quickshell
// pattern and easy to extend (e.g. swap `date` for a custom script).
Item {
    id: clock
    implicitWidth: clockLabel.implicitWidth
    implicitHeight: clockLabel.implicitHeight

    property string timeText: ""

    Process {
        id: dateProc
        command: ["date", "+%a %b %d  %H:%M"]
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

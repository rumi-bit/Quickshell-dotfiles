import ".." as Root
import QtQml
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import qs.bar.content

Scope {
    id: root

    PanelWindow {

        color: "transparent"
        implicitHeight: Root.Theme.barHeight
        aboveWindows: true

        anchors {
            top: true
            left: true
            right: true
        }

        margins {
            top: 10
            left: 10
            right: 10
        }

        

        Content {
            anchors.fill: parent
        }
        

    }

}

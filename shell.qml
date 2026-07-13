import Quickshell
import QtQuick
import Niri
import "bar" as Bar


ShellRoot {
    id: root

    Niri {
        id: niri
        Component.onCompleted: connect()

        onConnected: console.log("Connected to niri")
    }

    Bar.Bar {}
}

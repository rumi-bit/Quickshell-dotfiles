import QtQuick
import QtQuick.Layouts
import "../../" as Root


Row {
    id: workspaces
    spacing: Root.Theme.gap
    

    Row {
        spacing: 15

        Repeater {
            model: 6
            delegate: Rectangle {
                required property int index

                width: 20
                height: 20
                color: "transparent"
                

                Text {
                    color: '#ffe193'
                    anchors.centerIn: parent
                    text: (index + 1)
                    font.pixelSize:20
                }
        }
    }
}
}

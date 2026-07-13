import QtQuick
import QtQuick.Layouts
import "../../" as Root


Row {
    id: workspaces
    spacing: Root.Theme.gap
    

    Row {
        spacing: 10

        Repeater {
            model: 6
            delegate: Rectangle {
                required property int index

                width: 30
                height: 17
                color: Root.Theme.pink
                radius: 10
                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: index + 1
                }
        }
    }
}
}

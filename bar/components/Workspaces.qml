import QtQuick
import QtQuick.Layouts
import "../../" as Root
import Niri


Row {
    id: root
    spacing: Root.Theme.gap
    property int activeWorkspace: 0

    

    Row {
        spacing: 10
        

        Repeater {
            model: niri.workspaces
            delegate: Rectangle {
                id: ui
                state: mouse.containsMouse ? "hover" : (model.isFocused ? "focused" : "normal")
                onStateChanged: if (model.isFocused) root.activeWorkspace = model.index
                height: 17
                radius: 10

                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: model.index
                    font.family: Root.Theme.fontFamily
                    font.pointSize: 10
                }

                MouseArea {
                    id: mouse
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    
                    onClicked: niri.focusWorkspaceById(model.id)
                }
                Behavior on width {
                    NumberAnimation { duration: 250; easing.type: Easing.InOutQuad }
                }
                Behavior on color {
                    ColorAnimation { duration: 150; }
                }
                states: [
                    State{
                        name: "normal"
                        PropertyChanges {target: ui; color: Root.Theme.pink; width: 30}
                        
                    },
                    State{
                        name: "focused"
                        PropertyChanges {target: ui; color: '#ff85a1'; width: 45} 
                        
                    },
                    State {
                        name: "hover"
                        PropertyChanges {target: ui; color: '#ffffff'; width: model.isFocused ? 45 : 38} 
                        
                    }
                ]
            }
        }
    }
}

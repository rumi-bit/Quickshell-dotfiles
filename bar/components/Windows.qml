import QtQuick
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import "../../" as Root
import "" as Dir
import Niri

Item {
    id: root
    implicitHeight: ui.implicitHeight
    implicitWidth: ui.implicitWidth
    property int index: 0
    
    Rectangle{
        id: ui
        implicitWidth: text.implicitWidth 
        
        
        
        Text{
            id: text
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            text: niri.focusedWindow?.appId ?? "Desktop " +  root.index
            font.pointSize: 12
            font.family: Root.Theme.fontFamily
        }

    }


}

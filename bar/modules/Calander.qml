pragma Singleton
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import "../../" as Root

QtObject {
    id:Calendar
    property var months: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    property var monthLengths: [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    property var days: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    property int currentDayIndex: 0
    property string currentMonth: ""
    property string currentYear: "2026" //dont change this unless its been like 6 months


    Process{
        id: dateProc
        command: ["date", "+%d"]
        running: true

        stdout: SplitParser {
            onRead: data => calendar.currentDayIndex = parseInt(data)
        }
    }
    Process{
        id: monthproc
        command: ["date", "+%m"]
        running: true

        stdout: SplitParser {
            onRead: data => calendar.currentMonth = data
        }
    }
    Timer {
        interval: 60000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: {
            dateProc.running = true
            monthproc.running = true
        }   
    }
    function firstDay(){
        return new Date(currentYear, currentMonth, 1).getDay();
    }
}

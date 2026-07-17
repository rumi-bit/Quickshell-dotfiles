pragma Singleton
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import "../../" as Root

Item {
    id:calendar
    property var months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    property var monthLengths: [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    property var days: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    property int currentDayIndex: 0
    property int currentMonth: 0
    property int currentYear: 2026  //dont change this unless its been like 6 months
    property int firstdayindex: 0
    property int month: 0
    Timer {
        interval: 60000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: firstDay()
    }
    function firstDay() {
        const d = new Date()
        currentMonth = d.getMonth()
        currentYear = d.getFullYear()
        currentDayIndex = d.getDay()
        firstdayindex = new Date(currentYear, month, 1).getDay()
    }
}

import QtQuick
import QtQuick.Layouts

Canvas {
    id: chevron

    property bool mirrored: false

    implicitWidth: mirrored ? 36 : 34
    implicitHeight: 60

    onPaint: {
        var ctx = getContext("2d");
        ctx.reset();
        ctx.strokeStyle = "white";
        ctx.lineWidth = 1.5;
        ctx.lineCap = "square";
        ctx.lineJoin = "miter";
        ctx.miterLimit = 4;
        ctx.beginPath();
        if (mirrored) {
            ctx.moveTo(4, height * 0.28);
            ctx.lineTo(width - 6, height * 0.49);
            ctx.lineTo(5, height * 0.7);
        } else {
            ctx.moveTo(width - 4, height * 0.28);
            ctx.lineTo(6, height * 0.49);
            ctx.lineTo(width - 5, height * 0.7);
        }
        ctx.stroke();
    }
}

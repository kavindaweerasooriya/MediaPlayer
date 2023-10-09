import QtQuick
import QtQuick.Controls.Fusion

Slider {
    id: slider

    property alias backgroundColor: backgroundRec.color
    property alias backgroundOpacity: backgroundRec.opacity

    background: Rectangle {
        id: backgroundRec
        x: slider.leftPadding
        y: slider.topPadding + slider.availableHeight / 2 - height / 2
        implicitWidth: 120
        implicitHeight: 8
        width: slider.availableWidth
        height: implicitHeight
        radius: 10
        color: "#c2c2cc"
        opacity: 0.2
        border.color: "#c2c2cc"
        border.width: 1
    }

    handle: Rectangle {
        x: slider.leftPadding + slider.visualPosition * (slider.availableWidth - width)
        y: slider.topPadding + slider.availableHeight / 2 - height / 2
        implicitWidth: 8
        implicitHeight: 8
        color: "transparent"
    }

    Rectangle {
        width: slider.visualPosition * slider.availableWidth
        x: slider.leftPadding
        y: slider.topPadding + slider.availableHeight / 2 - height / 2
        height: 8
        color:"#c2c2cc"
        radius: 10
    }
}
/// border.color: "#41CD52"
///color: "#41CD52"

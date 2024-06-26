import QtQuick
import QtQuick.Controls.Fusion
import QtQuick.Dialogs
import Config

Item {
    id: root

    implicitHeight: menuBar.height

    signal fileOpened(path: url)

    property alias openFileMenu: fileDialog
//    property alias openUrlPopup: urlPopup

    FileDialog {
        id: fileDialog
        title: qsTr("Please choose a file")
        onAccepted: root.fileOpened(fileDialog.selectedFile)
    }

//    UrlPopup {
//        id: urlPopup
//        onPathChanged: root.fileOpened(urlPopup.path)
//    }

    MenuBar {
        id: menuBar
        visible: !Config.isMobileTarget
        anchors.left: root.left
        leftPadding: 10
        topPadding: 10

        palette.base: Config.mainColor
        palette.text: Config.secondaryColor
        palette.highlightedText: "#41CD52"
        palette.window: "transparent"
        palette.highlight: Config.mainColor

        Menu {
            title: qsTr("&File")
            palette.text: Config.secondaryColor
            palette.window: Config.mainColor
            palette.highlightedText: "#41CD52"

            MenuItem {
                text: qsTr("Open &File")
                onTriggered: fileDialog.open()
            }
//            MenuItem {
//                text: qsTr("Open &URL")
//                onTriggered: urlPopup.open()
//            }
        }
    }
}

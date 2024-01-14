import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 400
    height: 300

    Rectangle {
        anchors.fill: parent
        color: "lightblue"

        Column {
            anchors.fill: parent

            // Table header
            Row {
                spacing: 10
                Rectangle {
                    width: 100
                    height: 30
                    color: "lightgray"
                    Text {
                        text: "Column 1"
                        anchors.centerIn: parent
                    }
                }

                Rectangle {
                    width: 100
                    height: 30
                    color: "lightgray"
                    Text {
                        text: "Column 2"
                        anchors.centerIn: parent
                    }
                }

                Rectangle {
                    width: 100
                    height: 30
                    color: "lightgray"
                    Text {
                        text: "Column 3"
                        anchors.centerIn: parent
                    }
                }
            }

            // Table data
            Repeater {
                model: 4 // Number of rows
                delegate: Row {
                    spacing: 10
                    Rectangle {
                        width: 100
                        height: 30
                        color: "white"
                        Text {
                            text: "Row " + (index + 1) + ", Column 1"
                            anchors.centerIn: parent
                        }
                    }

                    Rectangle {
                        width: 100
                        height: 30
                        color: "white"
                        Text {
                            text: "Row " + (index + 1) + ", Column 2"
                            anchors.centerIn: parent
                        }
                    }

                    Rectangle {
                        width: 100
                        height: 30
                        color: "white"
                        Text {
                            text: "Row " + (index + 1) + ", Column 3"
                            anchors.centerIn: parent
                        }
                    }
                }
            }
        }
    }
}


// SecondWindow.qml
//import QtQuick 2.15
//import QtQuick.Controls 2.15

//Item {
//    width: 400
//    height: 300

//    Rectangle {
//        anchors.fill: parent
//        color: "lightblue"

//        Text {
//            text: "This is the second window!"
//            anchors.centerIn: parent
//            font.pixelSize: 24
//        }
//    }
//}

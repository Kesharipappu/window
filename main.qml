// main.qml
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 300

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: firstPage // Set the first page as the initial view
    }

    Component {
        id: firstPage // Define the first page view
        Rectangle {
            width: 400
            height: 300
            color: "lightgreen"

            Button {
                text: "Open Second Window"
                anchors.centerIn: parent
                onClicked: stackView.push(secondPage) // Push the second page onto the stack when the button is clicked
            }
        }
    }

    Component {
        id: secondPage // Define the second page view
        SecondWindow {} // Use the SecondWindow.qml component for the second page
    }
}

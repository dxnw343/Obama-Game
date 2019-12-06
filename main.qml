import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: game
    property alias image: image
    property alias game: game




    Image {
        id: image1
        anchors.fill: parent
        anchors.right: parent.right
        source: "file:///C:/Users/dwood/Documents/ObamaGameGood/Obama-Game/Images/grass.png"

        Rectangle {
            id: avatar
            x: 33
            y: 60
            width: 80
            height: 80
            color: "#ffffff"
            focus: true
            Keys.onPressed: {

                if(event.key === Qt.Key_W){
                    avatar.y -= 7
                }
                if(event.key === Qt.Key_A){
                    avatar.x -= 7
                }
                if(event.key === Qt.Key_S){
                    avatar.y += 7
                }
                if(event.key === Qt.Key_D){
                    avatar.x += 7
                }
            }

            Image {
                id: image
                anchors.fill: parent
                source: "C:/Users/dwood/Documents/ObamaGameGood/Obama-Game/Images/avatar.png"
            }
        }
    }
}

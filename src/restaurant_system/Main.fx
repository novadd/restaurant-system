/*
 * Main.fx
 *
 * Created on 2010-05-01, 20:27:36
 */

package restaurant_system;

/**
 * @author Tomek
 */
public class Main {

    public-read var stack: javafx.scene.layout.Stack;//GEN-BEGIN:main
    public-read var radioButton: javafx.scene.control.RadioButton;
    public-read var scene: javafx.scene.Scene;
    
    public-read var currentState: org.netbeans.javafx.design.DesignState;
    
    // <editor-fold defaultstate="collapsed" desc="Generated Init Block">
    init {
        stack = javafx.scene.layout.Stack {
            layoutX: 166.0
            layoutY: 54.0
            width: 100.0
            height: 95.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind stack.width
                height: bind stack.height
            }
            content: [ ]
        };
        radioButton = javafx.scene.control.RadioButton {
            layoutX: 322.0
            layoutY: 48.0
            text: "RadioButton"
        };
        scene = javafx.scene.Scene {
            width: 480.0
            height: 320.0
            content: javafx.scene.layout.Panel {
                content: getDesignRootNodes ()
            }
        };
        
        currentState = org.netbeans.javafx.design.DesignState {
            names: [ "New State 1", ]
            stateChangeType: org.netbeans.javafx.design.DesignStateChangeType.PAUSE_AND_PLAY_FROM_START
            actual: 0
            createTimeline: function (actual) {
                if (actual == 0) {
                    javafx.animation.Timeline {
                        keyFrames: [
                        ]
                    }
                } else {
                    null
                }
            }
        }
    }// </editor-fold>
    
    // <editor-fold defaultstate="collapsed" desc="Generated Design Functions">
    public function getDesignRootNodes () : javafx.scene.Node[] {
        [ stack, radioButton, ]
    }
    
    public function getDesignScene (): javafx.scene.Scene {
        scene
    }// </editor-fold>//GEN-END:main

}

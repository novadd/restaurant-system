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

    public-read var button: javafx.scene.control.Button;//GEN-BEGIN:main
    public-read var scene: javafx.scene.Scene;
    public-read var reflectionEffect: javafx.scene.effect.Reflection;
    
    public-read var currentState: org.netbeans.javafx.design.DesignState;
    
    // <editor-fold defaultstate="collapsed" desc="Generated Init Block">
    init {
        reflectionEffect = javafx.scene.effect.Reflection {
        };
        button = javafx.scene.control.Button {
            layoutX: 141.0
            layoutY: 68.0
            width: 101.0
            height: 67.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button.width
                height: bind button.height
            }
            effect: reflectionEffect
            text: "Button"
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
                            javafx.animation.KeyFrame {
                                time: 1000ms
                                values: [
                                    button.layoutX => 304.0 tween javafx.animation.Interpolator.EASEIN,
                                    button.layoutY => 31.0 tween javafx.animation.Interpolator.EASEIN,
                                ]
                            }
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
        [ button, ]
    }
    
    public function getDesignScene (): javafx.scene.Scene {
        scene
    }// </editor-fold>//GEN-END:main

}

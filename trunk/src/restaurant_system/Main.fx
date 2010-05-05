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

    public-read var rectangle4: javafx.scene.shape.Rectangle;//GEN-BEGIN:main
    public-read var rectangle: javafx.scene.shape.Rectangle;
    public-read var login: javafx.scene.layout.Panel;
    public-read var rectangle2: javafx.scene.shape.Rectangle;
    public-read var waiterTables: javafx.scene.layout.Panel;
    public-read var rectangle3: javafx.scene.shape.Rectangle;
    public-read var listView: javafx.scene.control.ListView;
    public-read var buttonLogin: javafx.scene.control.Button;
    public-read var panel: javafx.scene.layout.Panel;
    public-read var scene: javafx.scene.Scene;
    public-read var colorBackground: javafx.scene.paint.Color;
    public-read var colorBlack: javafx.scene.paint.Color;
    public-read var dropShadowEffect: javafx.scene.effect.DropShadow;
    
    public-read var currentState: org.netbeans.javafx.design.DesignState;
    
    // <editor-fold defaultstate="collapsed" desc="Generated Init Block">
    init {
        listView = javafx.scene.control.ListView {
            layoutX: 139.0
            layoutY: 15.0
            width: 181.0
            height: 240.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listView.width
                height: bind listView.height
            }
            items: listViewItems
        };
        buttonLogin = javafx.scene.control.Button {
            layoutX: 139.0
            layoutY: 267.0
            width: 181.0
            height: 30.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonLogin.width
                height: bind buttonLogin.height
            }
            text: "Login"
        };
        colorBackground = javafx.scene.paint.Color {
            red: 0.43529412
            green: 0.43529412
            blue: 0.52156866
            opacity: 1.0
        };
        rectangle4 = javafx.scene.shape.Rectangle {
            layoutX: -149.0
            layoutY: -70.0
            fill: colorBackground
            width: 800.0
            height: 500.0
        };
        colorBlack = javafx.scene.paint.Color {
        };
        dropShadowEffect = javafx.scene.effect.DropShadow {
        };
        rectangle3 = javafx.scene.shape.Rectangle {
            layoutX: 2.0
            layoutY: 2.0
            effect: dropShadowEffect
            fill: colorBackground
            stroke: colorBlack
            x: -2.0
            y: -2.0
            width: 472.0
            height: 312.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        panel = javafx.scene.layout.Panel {
            layoutX: 2.0
            layoutY: 2.0
            width: 472.0
            height: 312.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind panel.width
                height: bind panel.height
            }
            content: [ rectangle3, listView, buttonLogin, ]
        };
        rectangle2 = javafx.scene.shape.Rectangle {
            layoutX: 0.0
            layoutY: 2.0
            effect: dropShadowEffect
            fill: colorBackground
            stroke: colorBlack
            strokeLineCap: javafx.scene.shape.StrokeLineCap.SQUARE
            y: -2.0
            width: 494.0
            height: 319.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        waiterTables = javafx.scene.layout.Panel {
            layoutX: -40.0
            layoutY: 0.0
            width: 494.0
            height: 320.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind waiterTables.width
                height: bind waiterTables.height
            }
            content: [ rectangle2, ]
        };
        rectangle = javafx.scene.shape.Rectangle {
            layoutX: 0.0
            layoutY: 2.0
            effect: dropShadowEffect
            fill: colorBackground
            stroke: colorBlack
            x: 0.0
            y: -2.0
            width: 494.0
            height: 319.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        login = javafx.scene.layout.Panel {
            layoutX: -20.0
            layoutY: 0.0
            width: 494.0
            height: 320.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind login.width
                height: bind login.height
            }
            content: [ rectangle, ]
        };
        scene = javafx.scene.Scene {
            width: 480.0
            height: 320.0
            content: javafx.scene.layout.Panel {
                content: getDesignRootNodes ()
            }
        };
        
        currentState = org.netbeans.javafx.design.DesignState {
            names: [ "login", "loggedInWaiter", ]
            stateChangeType: org.netbeans.javafx.design.DesignStateChangeType.PAUSE_AND_PLAY_FROM_START
            actual: 0
            createTimeline: function (actual) {
                if (actual == 0) {
                    javafx.animation.Timeline {
                        keyFrames: [
                            javafx.animation.KeyFrame {
                                time: 0.001ms
                                action: function() {
                                    rectangle3.layoutX = 2.0;
                                    rectangle3.layoutY = 2.0;
                                    buttonLogin.text = "Login";
                                    buttonLogin.action = buttonActionAtlogin;
                                    panel.layoutX = 2.0;
                                    panel.layoutY = 2.0;
                                }
                            }
                        ]
                    }
                } else if (actual == 1) {
                    javafx.animation.Timeline {
                        keyFrames: [
                            javafx.animation.KeyFrame {
                                time: 1000ms
                                values: [
                                    rectangle3.layoutX => 4.0 tween javafx.animation.Interpolator.EASEOUT,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEOUT,
                                    panel.layoutX => 2.0 tween javafx.animation.Interpolator.EASEOUT,
                                    panel.layoutY => -350.0 tween javafx.animation.Interpolator.EASEOUT,
                                ]
                                action: function() {
                                    buttonLogin.text = "Login";
                                }
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
        [ rectangle4, login, waiterTables, panel, ]
    }
    
    public function getDesignScene (): javafx.scene.Scene {
        scene
    }// </editor-fold>//GEN-END:main

    var listViewItems: Object[] = Engine.loginList();

    function buttonActionAtlogin(): Void {
        currentState.actual = currentState.findIndex("loggedInWaiter");
            }
};

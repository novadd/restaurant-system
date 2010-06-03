/*
 * Main.fx
 *
 * Created on 2010-05-01, 20:27:36
 */

package restaurant_system;

import java.util.ArrayList;

/**
 * @author Wojtek
 */
public class Main {

    public-read var loggedId: Integer;
    public-read var billId: Integer;
    var listLoginItems: Object[] = Engine.loginList();
    var listLoginIDItems: Object[] = Engine.loginListID();
    var listMenuItems: Object[] = Engine.menuList();
    var listMenuIDItems: Object[] = Engine.menuListID();
    var activeTableNr: Integer;
    var activeBillNr: Object;

    public-read var rectangle: javafx.scene.shape.Rectangle;//GEN-BEGIN:main
    public-read var listMenu: javafx.scene.control.ListView;
    public-read var listBill: javafx.scene.control.ListView;
    public-read var listMenuID: javafx.scene.control.ListView;
    public-read var billNr: javafx.scene.control.Label;
    public-read var previousBill: javafx.scene.control.Button;
    public-read var nextBill: javafx.scene.control.Button;
    public-read var buttonBillFinalize: javafx.scene.control.Button;
    public-read var button1: javafx.scene.control.Button;
    public-read var button2: javafx.scene.control.Button;
    public-read var button3: javafx.scene.control.Button;
    public-read var button4: javafx.scene.control.Button;
    public-read var button5: javafx.scene.control.Button;
    public-read var button6: javafx.scene.control.Button;
    public-read var button7: javafx.scene.control.Button;
    public-read var button8: javafx.scene.control.Button;
    public-read var button9: javafx.scene.control.Button;
    public-read var button0: javafx.scene.control.Button;
    public-read var toggleButtonLocked: javafx.scene.control.ToggleButton;
    public-read var buttonC: javafx.scene.control.Button;
    public-read var labelCount: javafx.scene.control.Label;
    public-read var waiterTable: javafx.scene.layout.Panel;
    public-read var rectangle2: javafx.scene.shape.Rectangle;
    public-read var table1: javafx.scene.shape.Circle;
    public-read var table2: javafx.scene.shape.Circle;
    public-read var table3: javafx.scene.shape.Circle;
    public-read var table4: javafx.scene.shape.Circle;
    public-read var table5: javafx.scene.shape.Circle;
    public-read var waiterTables: javafx.scene.layout.Panel;
    public-read var rectangle3: javafx.scene.shape.Rectangle;
    public-read var listLogin: javafx.scene.control.ListView;
    public-read var buttonLogin: javafx.scene.control.Button;
    public-read var listLoginID: javafx.scene.control.ListView;
    public-read var login: javafx.scene.layout.Panel;
    public-read var rectangle4: javafx.scene.shape.Rectangle;
    public-read var buttonBack: javafx.scene.control.Button;
    public-read var buttonLogout: javafx.scene.control.Button;
    public-read var labelLogin: javafx.scene.control.Label;
    public-read var logout: javafx.scene.layout.Panel;
    public-read var scene: javafx.scene.Scene;
    public-read var colorBackground: javafx.scene.paint.Color;
    public-read var colorBlack: javafx.scene.paint.Color;
    public-read var dropShadowEffect: javafx.scene.effect.DropShadow;
    public-read var fontStandard: javafx.scene.text.Font;
    public-read var colorGreen: javafx.scene.paint.Color;
    public-read var colorYellow: javafx.scene.paint.Color;
    public-read var colorRed: javafx.scene.paint.Color;
    
    public-read var currentState: org.netbeans.javafx.design.DesignState;
    
    // <editor-fold defaultstate="collapsed" desc="Generated Init Block">
    init {
        listMenu = javafx.scene.control.ListView {
            layoutX: 111.0
            layoutY: 35.0
            width: 150.0
            height: 232.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listMenu.width
                height: bind listMenu.height
            }
            onMouseClicked: listMenuOnMouseClicked
            items: listMenuItems
        };
        listBill = javafx.scene.control.ListView {
            disable: false
            layoutX: 297.0
            layoutY: 35.0
            width: 150.0
            height: 231.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listBill.width
                height: bind listBill.height
            }
            items: null
        };
        listMenuID = javafx.scene.control.ListView {
            visible: true
            layoutX: 576.0
            layoutY: 54.0
            width: 62.0
            height: 79.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listMenuID.width
                height: bind listMenuID.height
            }
            items: listMenuIDItems
        };
        previousBill = javafx.scene.control.Button {
            layoutX: 323.0
            layoutY: 3.0
            text: "<"
        };
        nextBill = javafx.scene.control.Button {
            layoutX: 390.0
            layoutY: 3.0
            text: ">"
        };
        buttonBillFinalize = javafx.scene.control.Button {
            layoutX: 392.0
            layoutY: 273.0
            text: "Finalize"
            action: buttonBillFinalizeAction
        };
        button1 = javafx.scene.control.Button {
            layoutX: 30.0
            layoutY: 35.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button1.width
                height: bind button1.height
            }
            translateX: 0.0
            translateY: 0.0
            text: "1"
        };
        button2 = javafx.scene.control.Button {
            layoutX: 53.0
            layoutY: 35.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button2.width
                height: bind button2.height
            }
            translateX: 0.0
            translateY: 0.0
            text: "2"
        };
        button3 = javafx.scene.control.Button {
            layoutX: 76.0
            layoutY: 35.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button3.width
                height: bind button3.height
            }
            text: "3"
        };
        button4 = javafx.scene.control.Button {
            layoutX: 30.0
            layoutY: 62.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button4.width
                height: bind button4.height
            }
            translateX: 0.0
            translateY: 0.0
            text: "4"
        };
        button5 = javafx.scene.control.Button {
            layoutX: 53.0
            layoutY: 62.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button5.width
                height: bind button5.height
            }
            translateX: 0.0
            translateY: 0.0
            text: "5"
        };
        button6 = javafx.scene.control.Button {
            layoutX: 76.0
            layoutY: 62.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button6.width
                height: bind button6.height
            }
            text: "6"
        };
        button7 = javafx.scene.control.Button {
            layoutX: 30.0
            layoutY: 89.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button7.width
                height: bind button7.height
            }
            translateX: 0.0
            translateY: 0.0
            text: "7"
        };
        button8 = javafx.scene.control.Button {
            layoutX: 53.0
            layoutY: 89.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button8.width
                height: bind button8.height
            }
            translateX: 0.0
            translateY: 0.0
            text: "8"
        };
        button9 = javafx.scene.control.Button {
            layoutX: 76.0
            layoutY: 89.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button9.width
                height: bind button9.height
            }
            text: "9"
        };
        button0 = javafx.scene.control.Button {
            layoutX: 53.0
            layoutY: 116.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button0.width
                height: bind button0.height
            }
            translateX: 0.0
            translateY: 0.0
            text: "0"
        };
        toggleButtonLocked = javafx.scene.control.ToggleButton {
            layoutX: 30.0
            layoutY: 116.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind toggleButtonLocked.width
                height: bind toggleButtonLocked.height
            }
            translateX: 0.0
            translateY: 0.0
            text: "L"
        };
        buttonC = javafx.scene.control.Button {
            layoutX: 76.0
            layoutY: 116.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonC.width
                height: bind buttonC.height
            }
            translateX: 0.0
            translateY: 0.0
            text: "C"
        };
        listLogin = javafx.scene.control.ListView {
            layoutX: 139.0
            layoutY: 9.0
            width: 181.0
            height: 240.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listLogin.width
                height: bind listLogin.height
            }
            items: listLoginItems
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
        listLoginID = javafx.scene.control.ListView {
            layoutX: 575.0
            layoutY: 397.0
            width: 52.0
            height: 76.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listLoginID.width
                height: bind listLoginID.height
            }
            items: listLoginIDItems
        };
        buttonBack = javafx.scene.control.Button {
            layoutX: 133.0
            layoutY: -15.0
            width: 58.0
            height: 24.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonBack.width
                height: bind buttonBack.height
            }
            text: "Back"
            action: buttonBackAction
        };
        buttonLogout = javafx.scene.control.Button {
            layoutX: 133.0
            layoutY: 15.0
            text: "Logout"
            action: buttonLogoutAction
        };
        labelLogin = javafx.scene.control.Label {
            layoutX: 133.0
            layoutY: -35.0
            text: "logged as"
        };
        colorBackground = javafx.scene.paint.Color {
            red: 0.43529412
            green: 0.43529412
            blue: 0.52156866
            opacity: 1.0
        };
        colorBlack = javafx.scene.paint.Color {
        };
        dropShadowEffect = javafx.scene.effect.DropShadow {
        };
        rectangle4 = javafx.scene.shape.Rectangle {
            layoutX: 2.0
            layoutY: -39.0
            effect: dropShadowEffect
            fill: colorBackground
            stroke: colorBlack
            width: 200.0
            height: 150.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        logout = javafx.scene.layout.Panel {
            layoutX: -118.0
            layoutY: 269.0
            width: 145.0
            height: 95.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind logout.width
                height: bind logout.height
            }
            content: [ rectangle4, buttonBack, buttonLogout, labelLogin, ]
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
        login = javafx.scene.layout.Panel {
            layoutX: 2.0
            layoutY: 2.0
            width: 472.0
            height: 312.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind login.width
                height: bind login.height
            }
            content: [ rectangle3, listLogin, buttonLogin, listLoginID, ]
        };
        rectangle2 = javafx.scene.shape.Rectangle {
            layoutX: 6.0
            layoutY: 1.0
            effect: dropShadowEffect
            fill: colorBackground
            stroke: colorBlack
            strokeLineCap: javafx.scene.shape.StrokeLineCap.SQUARE
            x: -2.0
            y: -2.0
            width: 472.0
            height: 312.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        rectangle = javafx.scene.shape.Rectangle {
            layoutX: 6.0
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
        fontStandard = javafx.scene.text.Font {
            size: 18.0
        };
        labelCount = javafx.scene.control.Label {
            layoutX: 38.0
            layoutY: 146.0
            width: 47.0
            height: 22.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind labelCount.width
                height: bind labelCount.height
            }
            text: "1"
            font: fontStandard
            hpos: javafx.geometry.HPos.CENTER
            vpos: javafx.geometry.VPos.CENTER
            graphicHPos: javafx.geometry.HPos.CENTER
            graphicVPos: javafx.geometry.VPos.CENTER
            textFill: null
        };
        billNr = javafx.scene.control.Label {
            layoutX: 357.0
            layoutY: 3.0
            text: "1/1"
            font: fontStandard
        };
        waiterTable = javafx.scene.layout.Panel {
            visible: true
            layoutX: 500.0
            layoutY: 2.0
            width: 472.0
            height: 312.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind waiterTable.width
                height: bind waiterTable.height
            }
            content: [ rectangle, listMenu, listBill, listMenuID, billNr, previousBill, nextBill, buttonBillFinalize, button1, button2, button3, button4, button5, button6, button7, button8, button9, button0, toggleButtonLocked, buttonC, labelCount, ]
        };
        colorGreen = javafx.scene.paint.Color {
            red: 0.0
            green: 1.0
            blue: 0.0
        };
        table4 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 271.0
            layoutY: 241.0
            fill: colorGreen
            stroke: colorBlack
            radius: 25.0
        };
        colorYellow = javafx.scene.paint.Color {
            red: 1.0
            green: 1.0
            blue: 0.0
        };
        table5 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 135.0
            layoutY: 229.0
            fill: colorYellow
            stroke: colorBlack
            radius: 25.0
        };
        table3 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 366.0
            layoutY: 149.0
            fill: colorYellow
            stroke: colorBlack
            radius: 25.0
        };
        colorRed = javafx.scene.paint.Color {
            red: 1.0
        };
        table2 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 243.0
            layoutY: 61.0
            fill: colorRed
            stroke: colorBlack
            radius: 25.0
        };
        table1 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 101.0
            layoutY: 97.0
            fill: colorRed
            stroke: colorBlack
            radius: 25.0
        };
        waiterTables = javafx.scene.layout.Panel {
            layoutX: 500.0
            layoutY: 2.0
            width: 472.0
            height: 312.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind waiterTables.width
                height: bind waiterTables.height
            }
            content: [ rectangle2, table1, table2, table3, table4, table5, ]
        };
        scenePre_CreationCode();
        scene = javafx.scene.Scene {
            width: 480.0
            height: 320.0
            content: javafx.scene.layout.Panel {
                content: getDesignRootNodes ()
            }
            fill: colorBackground
        };
        
        currentState = org.netbeans.javafx.design.DesignState {
            names: [ "login", "waiterTablePick", "waiterTable", ]
            stateChangeType: org.netbeans.javafx.design.DesignStateChangeType.PAUSE_AND_PLAY_FROM_START
            actual: 0
            createTimeline: function (actual) {
                if (actual == 0) {
                    javafx.animation.Timeline {
                        keyFrames: [
                            javafx.animation.KeyFrame {
                                time: 1000ms
                                values: [
                                    waiterTable.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle2.x => -2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutX => -60.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutY => 11.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateX => 162.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateY => 86.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutY => 31.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutY => 62.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutY => 9.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -112.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 329.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    listLogin.select (-1);
                                    buttonLogin.text = "Login";
                                    buttonLogin.action = buttonActionAtlogin;
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
                                    waiterTable.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle2.x => -2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutX => 101.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutY => 97.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateX => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutX => 4.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutY => -350.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutY => -39.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutY => -15.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutY => 15.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutY => -35.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -118.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 269.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    table1.onMouseClicked = table1OnMouseClickedAtwaiterTablePick;
                                    listLogin.select (-1);
                                    buttonLogin.text = "Login";
                                }
                            }
                        ]
                    }
                } else if (actual == 2) {
                    javafx.animation.Timeline {
                        keyFrames: [
                            javafx.animation.KeyFrame {
                                time: 1000ms
                                values: [
                                    waiterTable.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle2.x => -2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutX => 101.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutY => 97.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateX => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutX => -500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutX => 4.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutY => -350.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutY => -39.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutY => -15.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutY => 15.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutY => -35.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -118.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 269.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    listBill.onMouseClicked = listBilOnMouseClickedAtwaiterTable;
                                    listLogin.select (0);
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
        [ waiterTable, waiterTables, login, logout, ]
    }
    
    public function getDesignScene (): javafx.scene.Scene {
        scene
    }// </editor-fold>//GEN-END:main

    function buttonBillFinalizeAction(): Void {
        //TODO
        while(Engine.billsListFromTable(activeTableNr).isEmpty()){
            Engine.removeBillFromTable(activeTableNr, activeBillNr);
        }
    }

    function buttonBackAction(): Void {
        currentState.previous();
    }

    function scenePre_CreationCode(): Void {
        Engine.createDB();
        table2.fill = colorGreen;
    }

    function clearList(list: javafx.scene.control.ListView){
        while(list.items[0] != null){
            list.items[0] = null;
        }
    }

    function listBilOnMouseClickedAtwaiterTable(event: javafx.scene.input.MouseEvent): Void {
    // ---------------------------------------------------
    // This function deletes selected item from the bill
    // ---------------------------------------------------
        listBill.items[listBill.selectedIndex] = null;
        Engine.removeFromBill(activeBillNr, listBill, 0);
    }

    function listMenuOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
    // ---------------------------------------------------
    // This function adds an item selected from the menu
    // to the last slot of an active bill
    // ---------------------------------------------------
        var length = 0;
        while(listBill.items[length] != null){
            length++;
        }
        if(length == 0){
            listBill.items[length] = Engine.decodeMenuID(listMenuID.items[listMenu.selectedIndex]);
            activeBillNr = Engine.addToBill(activeBillNr, listMenuID.items[listMenu.selectedIndex], 0, loggedId);
        }
        listBill.items[length] = Engine.decodeMenuID(listMenuID.items[listMenu.selectedIndex]);
        Engine.addToBill(activeBillNr, listMenuID.items[listMenu.selectedIndex], 0, loggedId);
    }

    function table1OnMouseClickedAtwaiterTablePick(event: javafx.scene.input.MouseEvent): Void {
    // ---------------------------------------------------
    // This function handles waiter table selection
    // green - free table -> click: opens a new bill
    // yellow - logged in waiter's table -> click: opens
    //                                      existing bill
    // red - other waiter's table -> click: shows the name
    //                               of the waiter
    // ---------------------------------------------------
        if(Engine.billsListFromTable(1).isEmpty()) {
            currentState.actual = currentState.findIndex("waiterTable");
            activeTableNr = 1;
            clearList(listBill);
        }
        else {
            currentState.actual = currentState.findIndex("waiterTable");
            activeTableNr = 1;
            activeBillNr = Engine.billsListFromTable(1);
            //clearList(listBill);
            var i = 0;
            while (Engine.printBill(activeBillNr)[i] != null){
                listBill.items[i] = Engine.printBill(activeBillNr)[i];
            }
        }
    }

    function buttonLogoutAction(): Void {
    // ---------------------------------------------------
    // This function logs out current user
    // ---------------------------------------------------
        currentState.actual = currentState.findIndex("login");
        loggedId = -1;
    }

    function buttonActionAtlogin(): Void {
    // ---------------------------------------------------
    // This function logs in a selected user. In a normal
    // restaurant this would be handeled by a electro-
    // magnetic card of some sort.
    // ---------------------------------------------------
        loggedId = -1;
        loggedId = listLogin.selectedIndex;
        if(loggedId != -1){
            labelLogin.text = Engine.decodeLoginIDSurname(listLoginID.items[listLogin.selectedIndex]);
            //... = String.valueOf(loggedId);
            currentState.actual = currentState.findIndex("waiterTablePick");
            //var length = 0;
            //while(listBill.items[length] != null){
            //    length++;
            //}
            //listBill.items[length] = Engine.decodeMenuID(listMenuID.items[listMenu.selectedIndex]);
        };
}
};

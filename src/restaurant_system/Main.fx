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

        //good backgroud color:
        //.43
        //.43
        //.52

    public-read var loggedId: Object;
    public-read var billId: Integer;
    var multiplier: Integer =-1;
    var listLoginItems: Object[] = Engine.loginList();
    var listLoginIDItems: Integer[] = Engine.loginListID();
    var listMenuItems: Object[] = Waiter.menuList();
    var listMenuIDItems: Object[] = Waiter.menuListID();
    var listDiscountsItems: Object[] = Waiter.discountsList();
    var listDiscountsIDStorage: Object[] = Waiter.discountsIDList();

    var listMenu2IDStorage: ArrayList;
    var listShortageIDStorage: ArrayList;
    var listLacksIDStorage: ArrayList;
    var listLoginIDStorage: ArrayList;
    var listBillIDStorage: ArrayList;
    var listBillDiscountIDStorage: ArrayList;
    var listOrderedIDStorage: ArrayList;
    var listReadyIDStorage: ArrayList;
    var listBeingPreparedIDStorage: ArrayList;
    var listManagerIDStorage: ArrayList;
    var activeTableNr: Integer;
    var activeBillNr: Object;
    var activeDiscount: Object;
    var removedDiscount: Object;

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
    public-read var buttonOrder: javafx.scene.control.Button;
    public-read var listPickedDisscount: javafx.scene.control.ListView;
    public-read var listDiscounts: javafx.scene.control.ListView;
    public-read var waiterTable: javafx.scene.layout.Panel;
    public-read var rectangle2: javafx.scene.shape.Rectangle;
    public-read var table1: javafx.scene.shape.Circle;
    public-read var table2: javafx.scene.shape.Circle;
    public-read var table3: javafx.scene.shape.Circle;
    public-read var table4: javafx.scene.shape.Circle;
    public-read var table5: javafx.scene.shape.Circle;
    public-read var labelWhoServes: javafx.scene.control.Label;
    public-read var waiterTables: javafx.scene.layout.Panel;
    public-read var rectangle3: javafx.scene.shape.Rectangle;
    public-read var listLogin: javafx.scene.control.ListView;
    public-read var buttonLogin: javafx.scene.control.Button;
    public-read var listLoginID: javafx.scene.control.ListView;
    public-read var debugger: javafx.scene.control.Label;
    public-read var login: javafx.scene.layout.Panel;
    public-read var rectangle5: javafx.scene.shape.Rectangle;
    public-read var listOrdered: javafx.scene.control.ListView;
    public-read var listBeingPrepared: javafx.scene.control.ListView;
    public-read var listReady: javafx.scene.control.ListView;
    public-read var toggleButton: javafx.scene.control.ToggleButton;
    public-read var label: javafx.scene.control.Label;
    public-read var label2: javafx.scene.control.Label;
    public-read var label3: javafx.scene.control.Label;
    public-read var buttonShortage: javafx.scene.control.Button;
    public-read var cook: javafx.scene.layout.Panel;
    public-read var rectangle6: javafx.scene.shape.Rectangle;
    public-read var listMenu2: javafx.scene.control.ListView;
    public-read var listShortage: javafx.scene.control.ListView;
    public-read var listLacks: javafx.scene.control.ListView;
    public-read var buttonClear: javafx.scene.control.Button;
    public-read var toggleButton2: javafx.scene.control.ToggleButton;
    public-read var shortage: javafx.scene.layout.Panel;
    public-read var rectangle7: javafx.scene.shape.Rectangle;
    public-read var buttonWaiterLogin: javafx.scene.control.Button;
    public-read var buttonChefLogin: javafx.scene.control.Button;
    public-read var listManager: javafx.scene.control.ListView;
    public-read var manager: javafx.scene.layout.Panel;
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
    public-read var colorOrange: javafx.scene.paint.Color;
    
    public-read var currentState: org.netbeans.javafx.design.DesignState;
    
    // <editor-fold defaultstate="collapsed" desc="Generated Init Block">
    init {
        listMenu = javafx.scene.control.ListView {
            layoutX: 148.0
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
            layoutX: 309.0
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
            layoutX: 335.0
            layoutY: 4.0
            text: "<"
        };
        nextBill = javafx.scene.control.Button {
            layoutX: 402.0
            layoutY: 4.0
            text: ">"
        };
        buttonBillFinalize = javafx.scene.control.Button {
            layoutX: 384.0
            layoutY: 273.0
            width: 75.0
            height: 24.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonBillFinalize.width
                height: bind buttonBillFinalize.height
            }
            text: "Finalize"
            action: buttonBillFinalizeAction
        };
        button1 = javafx.scene.control.Button {
            layoutX: 43.0
            layoutY: 106.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button1.width
                height: bind button1.height
            }
            onMouseClicked: button1OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "1"
        };
        button2 = javafx.scene.control.Button {
            layoutX: 66.0
            layoutY: 106.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button2.width
                height: bind button2.height
            }
            onMouseClicked: button2OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "2"
        };
        button3 = javafx.scene.control.Button {
            layoutX: 89.0
            layoutY: 106.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button3.width
                height: bind button3.height
            }
            onMouseClicked: button3OnMouseClicked
            text: "3"
        };
        button4 = javafx.scene.control.Button {
            layoutX: 43.0
            layoutY: 133.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button4.width
                height: bind button4.height
            }
            onMouseClicked: button4OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "4"
        };
        button5 = javafx.scene.control.Button {
            layoutX: 66.0
            layoutY: 133.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button5.width
                height: bind button5.height
            }
            onMouseClicked: button5OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "5"
        };
        button6 = javafx.scene.control.Button {
            layoutX: 89.0
            layoutY: 133.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button6.width
                height: bind button6.height
            }
            onMouseClicked: button6OnMouseClicked
            text: "6"
        };
        button7 = javafx.scene.control.Button {
            layoutX: 43.0
            layoutY: 160.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button7.width
                height: bind button7.height
            }
            onMouseClicked: button7OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "7"
        };
        button8 = javafx.scene.control.Button {
            layoutX: 66.0
            layoutY: 160.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button8.width
                height: bind button8.height
            }
            onMouseClicked: button8OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "8"
        };
        button9 = javafx.scene.control.Button {
            layoutX: 89.0
            layoutY: 160.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button9.width
                height: bind button9.height
            }
            onMouseClicked: button9OnMouseClicked
            text: "9"
        };
        button0 = javafx.scene.control.Button {
            layoutX: 66.0
            layoutY: 187.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button0.width
                height: bind button0.height
            }
            onMouseClicked: button0OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "0"
        };
        toggleButtonLocked = javafx.scene.control.ToggleButton {
            layoutX: 43.0
            layoutY: 187.0
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
            layoutX: 89.0
            layoutY: 187.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonC.width
                height: bind buttonC.height
            }
            onMouseClicked: buttonCOnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "C"
        };
        buttonOrder = javafx.scene.control.Button {
            layoutX: 310.0
            layoutY: 273.0
            width: 68.0
            height: 24.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonOrder.width
                height: bind buttonOrder.height
            }
            text: "Order"
            action: buttonOrderAction
        };
        listPickedDisscount = javafx.scene.control.ListView {
            layoutX: 9.0
            layoutY: 35.0
            width: 131.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listPickedDisscount.width
                height: bind listPickedDisscount.height
            }
            onMouseClicked: tableSlide
        };
        listDiscounts = javafx.scene.control.ListView {
            visible: false
            layoutX: 9.0
            layoutY: 54.0
            width: 131.0
            height: 160.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listDiscounts.width
                height: bind listDiscounts.height
            }
            onMouseClicked: listDiscountsOnMouseClicked
            items: listDiscountsItems
        };
        labelWhoServes = javafx.scene.control.Label {
            layoutX: -100.0
            layoutY: -100.0
            width: 150.0
            height: 100.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind labelWhoServes.width
                height: bind labelWhoServes.height
            }
            onMouseClicked: labelWhoServesOnMouseExited
            effect: null
            text: "Label"
            font: null
            textAlignment: javafx.scene.text.TextAlignment.RIGHT
            hpos: javafx.geometry.HPos.CENTER
            vpos: javafx.geometry.VPos.CENTER
            graphicHPos: javafx.geometry.HPos.CENTER
            graphicVPos: javafx.geometry.VPos.CENTER
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
        debugger = javafx.scene.control.Label {
            visible: false
            layoutX: 14.0
            layoutY: 344.0
            width: 972.0
            height: 61.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind debugger.width
                height: bind debugger.height
            }
            text: "Label"
        };
        listOrdered = javafx.scene.control.ListView {
            layoutX: 13.0
            layoutY: 27.0
            width: 140.0
            height: 182.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listOrdered.width
                height: bind listOrdered.height
            }
        };
        listBeingPrepared = javafx.scene.control.ListView {
            layoutX: 163.0
            layoutY: 27.0
            width: 140.0
            height: 232.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listBeingPrepared.width
                height: bind listBeingPrepared.height
            }
            onMouseClicked: listBeingPreparedOnMouseClickedAtchefOrders
        };
        listReady = javafx.scene.control.ListView {
            layoutX: 313.0
            layoutY: 27.0
            width: 140.0
            height: 232.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listReady.width
                height: bind listReady.height
            }
            onMouseClicked: listReadyOnMouseClickedAtchefOrders
        };
        toggleButton = javafx.scene.control.ToggleButton {
            layoutX: 216.0
            layoutY: 273.0
            text: "<<<"
        };
        label = javafx.scene.control.Label {
            layoutX: 13.0
            layoutY: 5.0
            text: "Ordered"
        };
        label2 = javafx.scene.control.Label {
            layoutX: 165.0
            layoutY: 5.0
            text: "Being Prepared"
        };
        label3 = javafx.scene.control.Label {
            layoutX: 315.0
            layoutY: 5.0
            text: "Ready"
        };
        buttonShortage = javafx.scene.control.Button {
            visible: true
            layoutX: 331.0
            layoutY: 273.0
            width: 103.0
            height: 24.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonShortage.width
                height: bind buttonShortage.height
            }
            text: "Report Shortage"
            action: buttonShortageAction
        };
        listMenu2 = javafx.scene.control.ListView {
            visible: true
            layoutX: 13.0
            layoutY: 27.0
            width: 140.0
            height: 182.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listMenu2.width
                height: bind listMenu2.height
            }
        };
        listShortage = javafx.scene.control.ListView {
            layoutX: 163.0
            layoutY: 27.0
            width: 140.0
            height: 232.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listShortage.width
                height: bind listShortage.height
            }
        };
        listLacks = javafx.scene.control.ListView {
            layoutX: 313.0
            layoutY: 27.0
            width: 140.0
            height: 232.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listLacks.width
                height: bind listLacks.height
            }
        };
        buttonClear = javafx.scene.control.Button {
            layoutX: 163.0
            layoutY: 271.0
            width: 140.0
            height: 24.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonClear.width
                height: bind buttonClear.height
            }
            text: "Clear All"
        };
        toggleButton2 = javafx.scene.control.ToggleButton {
            visible: false
            layoutX: 306.0
            layoutY: 268.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind toggleButton2.width
                height: bind toggleButton2.height
            }
            text: "ToggleButton"
        };
        buttonWaiterLogin = javafx.scene.control.Button {
            layoutX: 340.0
            layoutY: 240.0
            width: 117.0
            height: 24.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonWaiterLogin.width
                height: bind buttonWaiterLogin.height
            }
            text: "Button"
        };
        buttonChefLogin = javafx.scene.control.Button {
            layoutX: 340.0
            layoutY: 270.0
            width: 117.0
            height: 24.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonChefLogin.width
                height: bind buttonChefLogin.height
            }
            text: "Button"
        };
        listManager = javafx.scene.control.ListView {
            layoutX: 14.0
            layoutY: 7.0
            width: 443.0
            height: 200.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listManager.width
                height: bind listManager.height
            }
            onMouseClicked: listManagerOnMouseClicked
        };
        buttonBack = javafx.scene.control.Button {
            layoutX: 78.0
            layoutY: 16.0
            width: 113.0
            height: 24.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonBack.width
                height: bind buttonBack.height
            }
            text: "Back"
            action: buttonBackAction
        };
        buttonLogout = javafx.scene.control.Button {
            layoutX: 78.0
            layoutY: -14.0
            width: 113.0
            height: 24.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonLogout.width
                height: bind buttonLogout.height
            }
            text: "Logout"
            action: buttonLogoutAction
        };
        labelLogin = javafx.scene.control.Label {
            layoutX: 78.0
            layoutY: -36.0
            width: 113.0
            height: 16.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind labelLogin.width
                height: bind labelLogin.height
            }
            text: "logged as"
            textWrap: true
        };
        colorBackground = javafx.scene.paint.Color {
            red: 0.4
            green: 0.4
            blue: 0.52156866
            opacity: 1.0
        };
        colorBlack = javafx.scene.paint.Color {
        };
        rectangle7 = javafx.scene.shape.Rectangle {
            layoutX: 0.0
            layoutY: -6.0
            fill: colorBackground
            stroke: colorBlack
            width: 472.0
            height: 312.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        manager = javafx.scene.layout.Panel {
            layoutX: 504.0
            layoutY: 8.0
            width: 480.0
            height: 320.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind manager.width
                height: bind manager.height
            }
            content: [ rectangle7, buttonWaiterLogin, buttonChefLogin, listManager, ]
        };
        rectangle6 = javafx.scene.shape.Rectangle {
            fill: colorBackground
            stroke: colorBlack
            width: 472.0
            height: 312.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        shortage = javafx.scene.layout.Panel {
            visible: true
            layoutX: 502.0
            layoutY: 0.0
            width: 474.0
            height: 313.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind shortage.width
                height: bind shortage.height
            }
            content: [ rectangle6, listMenu2, listShortage, listLacks, buttonClear, toggleButton2, ]
        };
        rectangle5 = javafx.scene.shape.Rectangle {
            layoutX: 0.0
            layoutY: 0.0
            fill: colorBackground
            stroke: colorBlack
            width: 472.0
            height: 312.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        cook = javafx.scene.layout.Panel {
            layoutX: 504.0
            layoutY: 1.0
            width: 472.0
            height: 312.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind cook.width
                height: bind cook.height
            }
            content: [ rectangle5, listOrdered, listBeingPrepared, listReady, toggleButton, label, label2, label3, buttonShortage, ]
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
            layoutX: -72.0
            layoutY: 378.0
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
            content: [ rectangle3, listLogin, buttonLogin, listLoginID, debugger, ]
        };
        rectangle2 = javafx.scene.shape.Rectangle {
            layoutX: 6.0
            layoutY: 1.0
            effect: dropShadowEffect
            fill: colorBackground
            smooth: true
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
            visible: true
            layoutX: 51.0
            layoutY: 68.0
            width: 47.0
            height: 22.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind labelCount.width
                height: bind labelCount.height
            }
            text: "1 x"
            font: fontStandard
            hpos: javafx.geometry.HPos.CENTER
            vpos: javafx.geometry.VPos.CENTER
            graphicHPos: javafx.geometry.HPos.CENTER
            graphicVPos: javafx.geometry.VPos.CENTER
            textFill: colorBlack
        };
        billNr = javafx.scene.control.Label {
            layoutX: 369.0
            layoutY: 4.0
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
            content: [ rectangle, listMenu, listBill, listMenuID, billNr, previousBill, nextBill, buttonBillFinalize, button1, button2, button3, button4, button5, button6, button7, button8, button9, button0, toggleButtonLocked, buttonC, labelCount, buttonOrder, listPickedDisscount, listDiscounts, ]
        };
        colorGreen = javafx.scene.paint.Color {
            red: 0.0
            green: 1.0
            blue: 0.0
        };
        table4 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 345.0
            layoutY: 244.0
            onMouseClicked: table4OnMouseClickedAtwaiterTablePick
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
            layoutX: 223.0
            layoutY: 229.0
            onMouseClicked: table5OnMouseClickedAtwaiterTablePick
            fill: colorYellow
            stroke: colorBlack
            radius: 25.0
        };
        table3 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 403.0
            layoutY: 141.0
            onMouseClicked: table3OnMouseClickedAtwaiterTablePick
            fill: colorYellow
            stroke: colorBlack
            radius: 25.0
        };
        colorRed = javafx.scene.paint.Color {
            red: 1.0
        };
        table2 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 301.0
            layoutY: 54.0
            onMouseClicked: table2OnMouseClickedAtwaiterTablePick
            fill: colorRed
            stroke: colorBlack
            radius: 25.0
        };
        table1 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 186.0
            layoutY: 112.0
            onMouseClicked: table1OnMouseClickedAtwaiterTablePick
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
            content: [ rectangle2, table1, table2, table3, table4, table5, labelWhoServes, ]
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
        colorOrange = javafx.scene.paint.Color {
            red: 1.0
            green: 0.50980395
            blue: 0.0
        };
        
        currentState = org.netbeans.javafx.design.DesignState {
            names: [ "login", "waiterTablePick", "waiterTable", "chefOrders", "chefShortages", "manager", ]
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
                                    table1.layoutX => 24.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutY => 26.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateX => 162.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateY => 86.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    cook.layoutX => 504.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    cook.layoutY => 1.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.layoutX => 13.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.layoutY => 27.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.width => 140.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.height => 182.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonClear.layoutX => 163.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonClear.layoutY => 271.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.layoutX => 306.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.layoutY => 268.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    shortage.layoutX => 502.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    shortage.layoutY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    manager.layoutX => 504.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    manager.layoutY => 8.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutY => 31.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutY => 60.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutY => 9.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -72.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 329.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    table1.onMouseClicked = table1OnMouseClickedAtwaiterTablePick;
                                    table2.onMouseClicked = table2OnMouseClickedAtwaiterTablePick;
                                    table3.onMouseClicked = table3OnMouseClickedAtwaiterTablePick;
                                    table4.onMouseClicked = table4OnMouseClickedAtwaiterTablePick;
                                    table5.onMouseClicked = table5OnMouseClickedAtwaiterTablePick;
                                    listLogin.select (-1);
                                    buttonLogin.text = "Login";
                                    buttonLogin.action = buttonActionAtlogin;
                                    listMenu2.visible = true;
                                    toggleButton2.visible = false;
                                    toggleButton2.text = "ToggleButton";
                                    shortage.visible = true;
                                    buttonWaiterLogin.text = "Button";
                                    buttonChefLogin.text = "Button";
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
                                    table1.layoutX => 186.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutY => 112.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateX => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutX => 4.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutY => -350.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    cook.layoutX => 504.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    cook.layoutY => 1.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.layoutX => 13.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.layoutY => 27.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.width => 140.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.height => 182.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonClear.layoutX => 163.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonClear.layoutY => 271.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.layoutX => 306.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.layoutY => 268.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    shortage.layoutX => 502.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    shortage.layoutY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    manager.layoutX => 504.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    manager.layoutY => 8.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutY => -39.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutY => 16.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutY => -14.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutY => -36.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -72.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 270.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    table1.onMouseClicked = table1OnMouseClickedAtwaiterTablePick;
                                    table2.onMouseClicked = table2OnMouseClickedAtwaiterTablePick;
                                    table3.onMouseClicked = table3OnMouseClickedAtwaiterTablePick;
                                    table4.onMouseClicked = table4OnMouseClickedAtwaiterTablePick;
                                    table5.onMouseClicked = table5OnMouseClickedAtwaiterTablePick;
                                    listLogin.select (-1);
                                    buttonLogin.text = "Login";
                                    listMenu2.visible = true;
                                    toggleButton2.visible = false;
                                    toggleButton2.text = "ToggleButton";
                                    shortage.visible = true;
                                    buttonWaiterLogin.text = "Button";
                                    buttonChefLogin.text = "Button";
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
                                    table1.layoutX => 186.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutY => 112.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateX => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutX => -500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutX => 4.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutY => -350.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    cook.layoutX => 504.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    cook.layoutY => 1.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.layoutX => 13.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.layoutY => 27.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.width => 140.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.height => 182.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonClear.layoutX => 163.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonClear.layoutY => 271.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.layoutX => 306.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.layoutY => 268.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    shortage.layoutX => 502.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    shortage.layoutY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    manager.layoutX => 504.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    manager.layoutY => 8.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutY => -39.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutY => 16.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutY => -14.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutY => -36.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -72.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 270.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    listBill.onMouseClicked = listBillOnMouseClickedAtwaiterTable;
                                    table1.onMouseClicked = table1OnMouseClickedAtwaiterTablePick;
                                    table2.onMouseClicked = table2OnMouseClickedAtwaiterTablePick;
                                    table3.onMouseClicked = table3OnMouseClickedAtwaiterTablePick;
                                    table4.onMouseClicked = table4OnMouseClickedAtwaiterTablePick;
                                    table5.onMouseClicked = table5OnMouseClickedAtwaiterTablePick;
                                    listLogin.select (0);
                                    buttonLogin.text = "Login";
                                    listMenu2.visible = true;
                                    toggleButton2.visible = false;
                                    toggleButton2.text = "ToggleButton";
                                    shortage.visible = true;
                                    buttonWaiterLogin.text = "Button";
                                    buttonChefLogin.text = "Button";
                                }
                            }
                        ]
                    }
                } else if (actual == 3) {
                    javafx.animation.Timeline {
                        keyFrames: [
                            javafx.animation.KeyFrame {
                                time: 1000ms
                                values: [
                                    waiterTable.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle2.x => -2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutX => 186.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutY => 112.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateX => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutX => 4.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutY => -350.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    cook.layoutX => 3.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    cook.layoutY => 3.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.layoutX => 13.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.layoutY => 27.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.width => 140.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.height => 182.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonClear.layoutX => 163.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonClear.layoutY => 271.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.layoutX => 306.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.layoutY => 268.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    shortage.layoutX => 502.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    shortage.layoutY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    manager.layoutX => 504.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    manager.layoutY => 8.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutY => -39.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutY => 16.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutY => -14.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutY => -36.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -72.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 270.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    table1.onMouseClicked = table1OnMouseClickedAtwaiterTablePick;
                                    table2.onMouseClicked = table2OnMouseClickedAtwaiterTablePick;
                                    table3.onMouseClicked = table3OnMouseClickedAtwaiterTablePick;
                                    table4.onMouseClicked = table4OnMouseClickedAtwaiterTablePick;
                                    table5.onMouseClicked = table5OnMouseClickedAtwaiterTablePick;
                                    listLogin.select (-1);
                                    buttonLogin.text = "Login";
                                    listOrdered.onMouseClicked = listOrderedOnMouseClickedAtchefOrders;
                                    listMenu2.visible = true;
                                    toggleButton2.visible = false;
                                    toggleButton2.text = "ToggleButton";
                                    shortage.visible = true;
                                    buttonWaiterLogin.text = "Button";
                                    buttonChefLogin.text = "Button";
                                }
                            }
                        ]
                    }
                } else if (actual == 4) {
                    javafx.animation.Timeline {
                        keyFrames: [
                            javafx.animation.KeyFrame {
                                time: 1000ms
                                values: [
                                    waiterTable.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle2.x => -2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutX => 186.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutY => 112.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateX => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutY => -323.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    cook.layoutX => 504.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    cook.layoutY => 1.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.layoutX => 13.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.layoutY => 27.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.width => 140.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.height => 182.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonClear.layoutX => 313.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonClear.layoutY => 271.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.layoutX => 163.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.layoutY => 271.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.width => 140.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.height => 24.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    shortage.layoutX => 3.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    shortage.layoutY => 3.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    manager.layoutX => 504.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    manager.layoutY => 8.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutY => -39.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutY => 16.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutY => -14.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutY => -36.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -72.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 270.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    table1.onMouseClicked = table1OnMouseClickedAtwaiterTablePick;
                                    table2.onMouseClicked = table2OnMouseClickedAtwaiterTablePick;
                                    table3.onMouseClicked = table3OnMouseClickedAtwaiterTablePick;
                                    table4.onMouseClicked = table4OnMouseClickedAtwaiterTablePick;
                                    table5.onMouseClicked = table5OnMouseClickedAtwaiterTablePick;
                                    listLogin.select (-1);
                                    buttonLogin.text = "Login";
                                    listMenu2.visible = true;
                                    listMenu2.onMouseClicked = listMenu2OnMouseClickedAtchefShortages;
                                    listShortage.onMouseClicked = listShortageOnMouseClickedAtchefShortages;
                                    listLacks.onMouseClicked = listLacksOnMouseClickedAtchefShortages;
                                    buttonClear.action = buttonClearActionAtchefShortages;
                                    toggleButton2.visible = true;
                                    toggleButton2.text = "<<<";
                                    shortage.visible = true;
                                    buttonWaiterLogin.text = "Button";
                                    buttonChefLogin.text = "Button";
                                }
                            }
                        ]
                    }
                } else if (actual == 5) {
                    javafx.animation.Timeline {
                        keyFrames: [
                            javafx.animation.KeyFrame {
                                time: 1000ms
                                values: [
                                    waiterTable.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle2.x => -2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutX => 186.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutY => 112.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateX => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutY => -332.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    cook.layoutX => 504.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    cook.layoutY => 1.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.layoutX => 13.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.layoutY => 27.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.width => 140.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    listMenu2.height => 182.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonClear.layoutX => 163.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonClear.layoutY => 271.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.layoutX => 306.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    toggleButton2.layoutY => 268.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    shortage.layoutX => 502.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    shortage.layoutY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    manager.layoutX => 5.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    manager.layoutY => 8.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutY => -39.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutY => 16.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutY => -14.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutX => 78.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutY => -36.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -72.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 270.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    table1.onMouseClicked = table1OnMouseClickedAtwaiterTablePick;
                                    table2.onMouseClicked = table2OnMouseClickedAtwaiterTablePick;
                                    table3.onMouseClicked = table3OnMouseClickedAtwaiterTablePick;
                                    table4.onMouseClicked = table4OnMouseClickedAtwaiterTablePick;
                                    table5.onMouseClicked = table5OnMouseClickedAtwaiterTablePick;
                                    listLogin.select (-1);
                                    buttonLogin.text = "Login";
                                    listMenu2.visible = true;
                                    toggleButton2.visible = false;
                                    toggleButton2.text = "ToggleButton";
                                    shortage.visible = true;
                                    buttonWaiterLogin.text = "Waiter";
                                    buttonWaiterLogin.action = buttonWaiterLoginActionAtmanager;
                                    buttonChefLogin.text = "Chef";
                                    buttonChefLogin.action = buttonChefLoginActionAtmanager;
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
        [ waiterTable, waiterTables, login, cook, shortage, manager, logout, ]
    }
    
    public function getDesignScene (): javafx.scene.Scene {
        scene
    }// </editor-fold>//GEN-END:main

    // <editor-fold defaultstate="collapsed" desc="Empty fold">

    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="General functions">

    function scenePre_CreationCode(): Void {
        Engine.createDB();
        listPickedDisscount.items[0] = Waiter.discountsList()[0];
        activeDiscount = Waiter.discountsIDList()[0];
    }

    function buttonBackAction(): Void {
        if(currentState.actual == currentState.findIndex("waiterTablePick")){
            if (Engine.decodeLoginIDFunction(loggedId)=="Manager") {
                    currentState.actual = currentState.findIndex("manager");
            }else{
            currentState.actual = currentState.findIndex("login");
            }
        }
        if(currentState.actual == currentState.findIndex("waiterTable")){
            Waiter.tableCheckForBills(activeTableNr);
            currentState.actual = currentState.findIndex("waiterTablePick");
        }
        if(currentState.actual == currentState.findIndex("chefOrders")){
            if (Engine.decodeLoginIDFunction(loggedId)=="Manager") {
                    currentState.actual = currentState.findIndex("manager");
            }else{
            currentState.actual = currentState.findIndex("login")
            }
        }
        if(currentState.actual == currentState.findIndex("chefShortages")){
            currentState.actual = currentState.findIndex("chefOrders");
        }
        if(currentState.actual == currentState.findIndex("manager")){
            currentState.actual = currentState.findIndex("login");
        }
        if(loggedId != -1){
            printChefsLists();
            colourTable(1,table1);
            colourTable(2,table2);
            colourTable(3,table3);
            colourTable(4,table4);
            colourTable(5,table5);
        }
        printChefsLists();
    }

    function clearList(list: javafx.scene.control.ListView){
        while(list.items[0] != null){
            list.items[0] = null;
        }
    }

    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="NumpadFunctions">
    function numberClicked(i: Integer){
        if (multiplier == -1){
            multiplier = i;
            labelCount.text = "{multiplier} x";
        }
        else {
            multiplier = 10*multiplier + i;
            labelCount.text = "{multiplier} x";
        }
    }

    function button1OnMouseClicked (event: javafx .scene.input.MouseEvent): Void {
        numberClicked(1);
    }

    function button2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(2);
    }

    function button3OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(3);
    }

    function button4OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(4);
    }

    function button5OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(5);
    }

    function button6OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(6);
    }

    function button7OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(7);
    }

    function button8OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(8);
    }

    function button9OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(9);
    }

    function button0OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(0);
    }

    function buttonCOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        multiplier = -1;
        labelCount.text = "1 x";
    }
    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="Bill handling">

    function printBill(){
        clearList(listBill);
        var i: Integer = 0;
        listBillIDStorage = Waiter.printBillMenuID(activeBillNr);
        listBillDiscountIDStorage = Waiter.printBillDiscountID(activeBillNr);
        while(i<Waiter.printBillMenuID(activeBillNr).size()){
                listBill.items[i] = Waiter.printBill(activeBillNr).get(i);
                //listBillIDStorage.set(i, Waiter.printBillMenuID(activeBillNr).get(i));
                i++
        }
        // print "sum"
        listBill.items[i+1] = Waiter.printBill(activeBillNr).get(i);
    };

    function listMenuOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
    // ---------------------------------------------------
    // This function adds an item selected from the menu
    // to the last slot of an active bill
    // ---------------------------------------------------
        var length: Integer = 0;
        if(multiplier == -1){
            multiplier = 1;
        }
        while(listBill.items[length] != null){
            length++;
        }
        if(length == 0){
            activeBillNr = Waiter.addToBill(null, listMenuID.items[listMenu.selectedIndex], activeDiscount, loggedId, 1);
            if(multiplier > 1){
                Waiter.addToBill(activeBillNr, listMenuID.items[listMenu.selectedIndex], activeDiscount, loggedId, multiplier - 1);
            }
            Waiter.addBillToTable(activeTableNr, activeBillNr);
            printBill();
        }
        else {
            Waiter.addToBill(activeBillNr, listMenuID.items[listMenu.selectedIndex], activeDiscount, loggedId, multiplier);
            printBill();
        }
        if (not toggleButtonLocked.selected){
            multiplier = -1;
            labelCount.text = "1 x";
        }
    }

    function listBillOnMouseClickedAtwaiterTable(event: javafx.scene.input.MouseEvent): Void {
    // ---------------------------------------------------
    // This function deletes selected item from the bill
    // ---------------------------------------------------
        if(multiplier == -1){
            multiplier = 1;
        }
        if(listBill.selectedIndex < listBillIDStorage.size()){
            removedDiscount = listBillDiscountIDStorage.get(listBill.selectedIndex);
            Waiter.removeFromBill(activeBillNr, listBillIDStorage.get(listBill.selectedIndex), removedDiscount, multiplier);
            printBill();
        }
        if (not toggleButtonLocked.selected){
            multiplier = -1;
            labelCount.text = "1 x";
        }
        Waiter.tableCheckForBills(activeTableNr);
    }

    function buttonOrderAction(): Void {
        Waiter.billWholeSetStatus(activeBillNr, "waiting");
    }
    
    function buttonBillFinalizeAction(): Void {
        if (Waiter.billCheckIfAllServed(activeBillNr)) {
            Waiter.removeBillFromTable(activeTableNr, activeBillNr);
            Waiter.printReceipt(Waiter.printBill(activeBillNr));
            clearList(listBill);
        }
    }
    
    function tableSlide(event: javafx.scene.input.MouseEvent): Void {
        listDiscounts.visible = not listDiscounts.visible;
    }

    function listDiscountsOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        listPickedDisscount.items[0] = listDiscounts.selectedItem;
        activeDiscount = listDiscountsIDStorage[listDiscounts.selectedIndex];
        listDiscounts.visible = false;
    }

    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="Table Pick">
    function pickTable(nr: Integer, table: javafx.scene.shape.Circle){
    // ---------------------------------------------------
    // This function handles waiter table selection
    // green - free table -> click: opens a new bill
    // yellow - logged in waiter's table -> click: opens
    //                                      existing bill
    // red - other waiter's table -> click: shows the name
    //                               of the waiter
    // ---------------------------------------------------
        if(Waiter.checkWhoServesTable(nr)==null) {
            currentState.actual = currentState.findIndex("waiterTable");
            activeTableNr = nr;
            clearList(listBill);
        }
        else {
            if(Waiter.checkWhoServesTable(nr).toString()==loggedId.toString()) {
                currentState.actual = currentState.findIndex("waiterTable");
                activeTableNr = nr;
                activeBillNr = Waiter.billsListFromTable(nr).get(0);
                printBill();
            }
            else{
                if (Engine.decodeLoginIDFunction(loggedId)=="Manager") {
                    currentState.actual = currentState.findIndex("waiterTable");
                    activeTableNr = nr;
                    activeBillNr = Waiter.billsListFromTable(nr).get(0);
                    printBill();
                };
//                labelWhoServes.text = "{Waiter.decodeLoginIDName(Waiter.checkWhoServesTable(nr))}\n{Engine.decodeLoginIDSurname(Waiter.checkWhoServesTable(nr))}";
//                labelWhoServes.layoutX = table.layoutX-labelWhoServes.width/2;
//                labelWhoServes.layoutY = table.layoutY-labelWhoServes.height/2;
            }
        }
    }

    function table1OnMouseClickedAtwaiterTablePick(event: javafx.scene.input.MouseEvent): Void {
        pickTable(1, table1);
    }

    function table2OnMouseClickedAtwaiterTablePick(event: javafx.scene.input.MouseEvent): Void {
        pickTable(2, table2);
    }

    function table3OnMouseClickedAtwaiterTablePick(event: javafx.scene.input.MouseEvent): Void {
        pickTable(3, table3);
    }

    function table4OnMouseClickedAtwaiterTablePick(event: javafx.scene.input.MouseEvent): Void {
        pickTable(4, table4);
    }

    function table5OnMouseClickedAtwaiterTablePick(event: javafx.scene.input.MouseEvent): Void {
        pickTable(5, table5);
    }

    function labelWhoServesOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        labelWhoServes.layoutX = -100;
        labelWhoServes.layoutY = -100;
    }
    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="Login/Logout + table coloring">
    function buttonLogoutAction(): Void {
    // ---------------------------------------------------
    // This function logs out current user
    // ---------------------------------------------------
        if(currentState.actual == currentState.findIndex("waiterTable")){
            Waiter.tableCheckForBills(activeTableNr);
        }
        currentState.actual = currentState.findIndex("login");
        loggedId = -1;
    }

    function colourTable(nr: Integer, table:javafx.scene.shape.Circle){
        if(Waiter.checkWhoServesTable(nr)==null) {
            table.fill = colorGreen;
        }
        else {
            if(Waiter.checkWhoServesTable(nr).toString()==loggedId.toString()) {
                table.fill = colorYellow;
            }
            else{
                table.fill = colorRed;
            }
        }
    }

    function buttonActionAtlogin(): Void {
    // ---------------------------------------------------
    // This function logs in a selected user. In a normal
    // restaurant this would be handeled by a electro-
    // magnetic card of some sort.
    // ---------------------------------------------------

        loggedId = -1;
        loggedId = Engine.loginListID()[listLogin.selectedIndex];
        if(loggedId != -1){

            if (Engine.decodeLoginIDFunction(loggedId)=="Waiter") {
                labelLogin.text = Engine.decodeLoginIDSurname(listLoginID.items[listLogin.selectedIndex]);
                currentState.actual = currentState.findIndex("waiterTablePick");
                colourTable(1, table1);
                colourTable(2, table2);
                colourTable(3, table3);
                colourTable(4, table4);
                colourTable(5, table5);
            }
            if (Engine.decodeLoginIDFunction(loggedId)=="Chef") {
                labelLogin.text = Engine.decodeLoginIDSurname(listLoginID.items[listLogin.selectedIndex]);
                printChefsLists();
                currentState.actual = currentState.findIndex("chefOrders");
            }
            if (Engine.decodeLoginIDFunction(loggedId)=="Manager") {
                labelLogin.text = Engine.decodeLoginIDSurname(listLoginID.items[listLogin.selectedIndex]);
                printManagerList();
                currentState.actual = currentState.findIndex("manager");
            }
        };
    }
    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="Chef Orders handling + table lightning">
    function mealReadyForTable(nr){
        if(nr==1){
            table1.strokeWidth = 5;
            table1.stroke = colorOrange;
        };
        if(nr==2){
            table2.strokeWidth = 5;
            table2.stroke = colorOrange;
        };
        if(nr==3){
            table3.strokeWidth = 5;
            table3.stroke = colorOrange;
        };
        if(nr==4){
            table4.strokeWidth = 5;
            table4.stroke = colorOrange;
        };
        if(nr==5){
            table5.strokeWidth = 5;
            table5.stroke = colorOrange;
        };
    }

    function noMealReadyForTable(nr){
        if(nr==1){
            table1.strokeWidth = 1;
            table1.stroke = colorBlack;
        };
        if(nr==2){
            table2.strokeWidth = 1;
            table2.stroke = colorBlack;
        };
        if(nr==3){
            table3.strokeWidth = 1;
            table3.stroke = colorBlack;
        };
        if(nr==4){
            table4.strokeWidth = 1;
            table4.stroke = colorBlack;
        };
        if(nr==5){
            table5.strokeWidth = 1;
            table5.stroke = colorBlack;
        };
    }

    function updateTableAllerts(){
        if(Waiter.checkIfMealReadyOnTable(1)){
            mealReadyForTable(1);
        } else {
            noMealReadyForTable(1);
        };
        if(Waiter.checkIfMealReadyOnTable(2)){
            mealReadyForTable(2);
        } else {
            noMealReadyForTable(2);
        };
        if(Waiter.checkIfMealReadyOnTable(3)){
            mealReadyForTable(3);
        } else {
            noMealReadyForTable(3);
        };
        if(Waiter.checkIfMealReadyOnTable(4)){
            mealReadyForTable(4);
        } else {
            noMealReadyForTable(4);
        };
        if(Waiter.checkIfMealReadyOnTable(5)){
            mealReadyForTable(5);
        } else {
            noMealReadyForTable(5);
        };
    }

    function printChefsLists(){
        
        clearList(listReady);
        clearList(listOrdered);
        clearList(listBeingPrepared);
        
        listOrderedIDStorage = Chef.printBillIDByStatus("waiting");
        listBeingPreparedIDStorage = Chef.printBillIDByStatus("processing");
        listReadyIDStorage = Chef.printBillIDByStatus("ready");

        //tab1
        var i: Integer = 0;
        var list: ArrayList = Chef.printBillMenuIDByStatus("waiting");
        while(i<Chef.printBillMenuIDByStatus("waiting").size()){
                listOrdered.items[i] = Chef.printBillByStatus("waiting").get(i);
                listOrderedIDStorage.set(i, Chef.printBillIDByStatus("waiting").get(i));
                i++;
        }
        //tab2
        i = 0;
        while(i<Chef.printBillMenuIDByStatus("processing").size()){
                listBeingPrepared.items[i] = Chef.printBillByStatus("processing").get(i);
                listBeingPreparedIDStorage.set(i, Chef.printBillIDByStatus("processing").get(i));
                i++;
        }
        //tab3
        i = 0;
        while(i<Chef.printBillMenuIDByStatus("ready").size()){
                listReady.items[i] = Chef.printBillByStatus("ready").get(i);
                listReadyIDStorage.set(i, Chef.printBillIDByStatus("ready").get(i));
                i++;
        }
    };
    
    function listOrderedOnMouseClickedAtchefOrders(event: javafx.scene.input.MouseEvent): Void {
        if(listOrdered.selectedIndex < listOrderedIDStorage.size() and listOrderedIDStorage.size() != 0 and not toggleButton.selected){
            Chef.billSetStatus(listOrderedIDStorage.get(listOrdered.selectedIndex), "processing");
            printChefsLists();
        }
    }

    function listBeingPreparedOnMouseClickedAtchefOrders(event: javafx.scene.input.MouseEvent): Void {
        if(listBeingPrepared.selectedIndex < listBeingPreparedIDStorage.size() and listBeingPreparedIDStorage.size() != 0){
            if(toggleButton.selected){
                Chef.billSetStatus(listBeingPreparedIDStorage.get(listBeingPrepared.selectedIndex), "waiting");
            } else {
                Chef.billSetStatus(listBeingPreparedIDStorage.get(listBeingPrepared.selectedIndex), "ready");
                updateTableAllerts();
            }
            printChefsLists();
        }
    }

    function listReadyOnMouseClickedAtchefOrders(event: javafx.scene.input.MouseEvent): Void {
        if(listReady.selectedIndex < listReadyIDStorage.size() and listReadyIDStorage.size() != 0){
            if(toggleButton.selected){
                Chef.billSetStatus(listReadyIDStorage.get(listReady.selectedIndex), "processing");
                updateTableAllerts();
            } else {
                Chef.billSetStatus(listReadyIDStorage.get(listReady.selectedIndex), "served");
                updateTableAllerts();
            }
            printChefsLists();
        }
    }

    function buttonShortageAction(): Void {
        currentState.actual = currentState.findIndex("chefShortages");
        printChefsShortageLists();
    }

    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="Chef Shortage Handling">
    function printChefsShortageLists(){

        clearList(listMenu2);
        clearList(listShortage);
        clearList(listLacks);

        listMenu2IDStorage = Chef.menuIDCheckWhichHaveStatus("ok");
        listShortageIDStorage = Chef.menuIDCheckWhichHaveStatus("low");
        listLacksIDStorage = Chef.menuIDCheckWhichHaveStatus("nok");

        //tab1
        var i: Integer = 0;
        while(i<Chef.menuIDCheckWhichHaveStatus("ok").size()){
                listMenu2.items[i] = Chef.menuCheckWhichHaveStatus("ok").get(i);
                listMenu2IDStorage.set(i, Chef.menuIDCheckWhichHaveStatus("ok").get(i));
                i++;
        }
        //tab2
        i = 0;
        while(i<Chef.menuIDCheckWhichHaveStatus("low").size()){
                listShortage.items[i] = Chef.menuCheckWhichHaveStatus("low").get(i);
                listShortageIDStorage.set(i, Chef.menuIDCheckWhichHaveStatus("low").get(i));
                i++;
        }
        //tab3
        i = 0;
        while(i<Chef.menuIDCheckWhichHaveStatus("nok").size()){
                listLacks.items[i] = Chef.menuCheckWhichHaveStatus("nok").get(i);
                listLacksIDStorage.set(i, Chef.menuIDCheckWhichHaveStatus("nok").get(i));
                i++;
        }
    };

    function listMenu2OnMouseClickedAtchefShortages(event: javafx.scene.input.MouseEvent): Void {
        if(listMenu2.selectedIndex < listMenu2IDStorage.size() and listMenu2IDStorage.size() != 0 and not toggleButton2.selected){
            Chef.menuSetStatus(listMenu2IDStorage.get(listMenu2.selectedIndex), "low");
            printChefsShortageLists();
        }
    }

    function listShortageOnMouseClickedAtchefShortages(event: javafx.scene.input.MouseEvent): Void {
        if(listShortage.selectedIndex < listShortageIDStorage.size() and listShortageIDStorage.size() != 0){
            if(toggleButton2.selected){
                Chef.menuSetStatus(listShortageIDStorage.get(listShortage.selectedIndex), "ok");
            } else {
                Chef.menuSetStatus(listShortageIDStorage.get(listShortage.selectedIndex), "nok");
            }
            printChefsShortageLists();
        }
    }

    function listLacksOnMouseClickedAtchefShortages(event: javafx.scene.input.MouseEvent): Void {
        if(listLacks.selectedIndex < listLacksIDStorage.size() and listLacksIDStorage.size() != 0){
            if(toggleButton2.selected){
                Chef.menuSetStatus(listLacksIDStorage.get(listLacks.selectedIndex), "low");
            } else {
                Chef.menuSetStatus(listLacksIDStorage.get(listLacks.selectedIndex), "ok");
            }
            printChefsShortageLists();
        }
    }

    function buttonClearActionAtchefShortages(): Void {
        Chef.menuWholeSetStatus("ok");
        printChefsShortageLists();
    }
    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="Manager">

    function printManagerList(){
        var i: Integer = 0;
        var list: ArrayList = Manager.managerBillsShow();
        listManagerIDStorage = Manager.managerBillsShowID();

        clearList(listManager);
        while (i < list.size()){
            listManager.items[i] = list.get(i);
            i++;
        }
    }

    function listManagerOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
    // --------------------------------------------------------
    // This function deletes selected item from the bills list
    // --------------------------------------------------------
        if(listManager.selectedIndex < listManagerIDStorage.size()){
            Manager.managerBillsRemove(listManagerIDStorage.get(listManager.selectedIndex));
            printManagerList();
        }     
        Manager.tableCheckForBills(1);
        Manager.tableCheckForBills(2);
        Manager.tableCheckForBills(3);
        Manager.tableCheckForBills(4);
        Manager.tableCheckForBills(5);
    }

    function buttonWaiterLoginActionAtmanager(): Void {
        currentState.actual = currentState.findIndex("waiterTablePick");
        colourTable(1,table1);
        colourTable(2,table2);
        colourTable(3,table3);
        colourTable(4,table4);
        colourTable(5,table5);
    }

    function buttonChefLoginActionAtmanager(): Void {
        currentState.actual = currentState.findIndex("chefOrders");
        printChefsLists();
    }

    // </editor-fold>
};

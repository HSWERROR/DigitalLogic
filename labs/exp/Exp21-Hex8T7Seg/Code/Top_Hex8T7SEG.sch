<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="G0,V5,V5,V5,G0,V5,V5,G0,G0,V5,G0,V5,G0,V5,G0,G0,G0,G0,V5,V5,G0,G0,V5,G0,G0,G0,G0,V5,G0,G0,G0,G0" />
        <signal name="SW(15:0)" />
        <signal name="SW(7:0)" />
        <signal name="SW(15:8)" />
        <signal name="Div(25)" />
        <signal name="XLXN_502" />
        <signal name="Div(31:0)" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <signal name="Div(20)" />
        <signal name="clk_100mhz" />
        <signal name="RSTN" />
        <signal name="XLXN_503" />
        <signal name="V5" />
        <signal name="Buzzer" />
        <signal name="G0" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <port polarity="Input" name="clk_100mhz" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Output" name="Buzzer" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="SSeg7_Dev">
            <timestamp>2015-12-28T12:22:48</timestamp>
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="32" />
            <line x2="368" y1="-160" y2="-160" x1="384" />
            <line x2="368" y1="-224" y2="-224" x1="384" />
            <line x2="368" y1="-96" y2="-96" x1="384" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(174,185,255);fillstyle:Solid" width="336" x="32" y="-372" height="360" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="368" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="-336" y2="-336" x1="32" />
            <line x2="0" y1="-304" y2="-304" x1="32" />
            <line x2="0" y1="-272" y2="-272" x1="32" />
        </blockdef>
        <blockdef name="clkdiv">
            <timestamp>2016-10-7T6:49:21</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(142,240,255);fillstyle:Solid" width="256" x="32" y="-140" height="140" />
            <line x2="0" y1="-112" y2="-112" x1="32" />
            <line x2="0" y1="-32" y2="-32" x1="32" />
            <line x2="320" y1="-64" y2="-64" style="linewidth:W" x1="288" />
        </blockdef>
        <block symbolname="SSeg7_Dev" name="M3">
            <blockpin signalname="SW(15:8)" name="LES(7:0)" />
            <blockpin signalname="SEG_PEN" name="SEG_PEN" />
            <blockpin signalname="seg_sout" name="seg_sout" />
            <blockpin signalname="seg_clrn" name="seg_clrn" />
            <blockpin signalname="SW(7:0)" name="point(7:0)" />
            <blockpin signalname="G0,V5,V5,V5,G0,V5,V5,G0,G0,V5,G0,V5,G0,V5,G0,G0,G0,G0,V5,V5,G0,G0,V5,G0,G0,G0,G0,V5,G0,G0,G0,G0" name="Hexs(31:0)" />
            <blockpin name="SW0" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="seg_clk" name="seg_clk" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_502" name="rst" />
            <blockpin signalname="Div(20)" name="Start" />
        </block>
        <block symbolname="inv" name="XLXI_44">
            <blockpin signalname="RSTN" name="I" />
            <blockpin signalname="XLXN_502" name="O" />
        </block>
        <block symbolname="clkdiv" name="M1">
            <attr value="clkdiv" name="VeriModel" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_502" name="rst" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_23">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_43">
            <blockpin signalname="V5" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_24">
            <blockpin signalname="G0" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <branch name="G0,V5,V5,V5,G0,V5,V5,G0,G0,V5,G0,V5,G0,V5,G0,G0,G0,G0,V5,V5,G0,G0,V5,G0,G0,G0,G0,V5,G0,G0,G0,G0">
            <attrtext style="alignment:HARD-TCENTER;fontsize:26;fontname:Arial" attrname="Name" x="736" y="688" type="branch" />
            <wire x2="1024" y1="576" y2="576" x1="736" />
            <wire x2="736" y1="576" y2="688" x1="736" />
        </branch>
        <branch name="SW(15:0)">
            <wire x2="400" y1="640" y2="640" x1="192" />
            <wire x2="400" y1="640" y2="672" x1="400" />
            <wire x2="400" y1="608" y2="640" x1="400" />
        </branch>
        <branch name="SW(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="576" y="608" type="branch" />
            <wire x2="576" y1="608" y2="608" x1="496" />
            <wire x2="1024" y1="608" y2="608" x1="576" />
        </branch>
        <bustap x2="496" y1="672" y2="672" x1="400" />
        <branch name="SW(15:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="576" y="672" type="branch" />
            <wire x2="576" y1="672" y2="672" x1="496" />
            <wire x2="688" y1="672" y2="672" x1="576" />
            <wire x2="688" y1="640" y2="672" x1="688" />
            <wire x2="1024" y1="640" y2="640" x1="688" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="992" y="528" type="branch" />
            <wire x2="992" y1="528" y2="528" x1="976" />
            <wire x2="1024" y1="528" y2="528" x1="992" />
        </branch>
        <branch name="XLXN_502">
            <wire x2="400" y1="496" y2="496" x1="384" />
            <wire x2="432" y1="496" y2="496" x1="400" />
            <wire x2="880" y1="352" y2="352" x1="400" />
            <wire x2="880" y1="352" y2="384" x1="880" />
            <wire x2="1024" y1="384" y2="384" x1="880" />
            <wire x2="400" y1="352" y2="496" x1="400" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:20;fontname:Arial" attrname="Name" x="816" y="464" type="branch" />
            <wire x2="816" y1="464" y2="464" x1="752" />
            <wire x2="816" y1="464" y2="528" x1="816" />
            <wire x2="880" y1="528" y2="528" x1="816" />
            <wire x2="864" y1="416" y2="416" x1="816" />
            <wire x2="816" y1="416" y2="464" x1="816" />
        </branch>
        <branch name="seg_clk">
            <wire x2="1472" y1="400" y2="400" x1="1408" />
        </branch>
        <branch name="seg_sout">
            <wire x2="1456" y1="464" y2="464" x1="1408" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="1424" y1="528" y2="528" x1="1408" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="1456" y1="592" y2="592" x1="1408" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="992" y="416" type="branch" />
            <wire x2="992" y1="416" y2="416" x1="960" />
            <wire x2="1024" y1="416" y2="416" x1="992" />
        </branch>
        <instance x="1024" y="688" name="M3" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="160" y="-236" type="instance" />
        </instance>
        <bustap x2="960" y1="416" y2="416" x1="864" />
        <bustap x2="976" y1="528" y2="528" x1="880" />
        <bustap x2="496" y1="608" y2="608" x1="400" />
        <iomarker fontsize="28" x="1472" y="400" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="1456" y="464" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="1424" y="528" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="1456" y="592" name="seg_clrn" orien="R0" />
        <iomarker fontsize="28" x="224" y="304" name="clk_100mhz" orien="R180" />
        <branch name="clk_100mhz">
            <wire x2="320" y1="304" y2="304" x1="224" />
            <wire x2="320" y1="304" y2="416" x1="320" />
            <wire x2="432" y1="416" y2="416" x1="320" />
            <wire x2="560" y1="304" y2="304" x1="320" />
            <wire x2="976" y1="304" y2="304" x1="560" />
            <wire x2="976" y1="304" y2="352" x1="976" />
            <wire x2="1024" y1="352" y2="352" x1="976" />
        </branch>
        <branch name="RSTN">
            <wire x2="160" y1="496" y2="496" x1="144" />
        </branch>
        <iomarker fontsize="28" x="192" y="640" name="SW(15:0)" orien="R180" />
        <text style="fontsize:20;fontname:Arial" x="876" y="564">Hex_num(31:0) </text>
        <text style="fontsize:30;fontname:Arial;textcolor:rgb(255,0,0)" x="80" y="752">Hex_num(31:0) = 1111 1110 1101 1100 1011 1010 1001 1000 0111 0110 0101 0100 0011 10010 0001 0000 </text>
        <instance x="432" y="528" name="M1" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="80" y="-96" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="VeriModel" x="160" y="-140" type="instance" />
        </instance>
        <instance x="160" y="528" name="XLXI_44" orien="R0" />
        <iomarker fontsize="28" x="144" y="496" name="RSTN" orien="R180" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="256" type="branch" />
            <wire x2="1024" y1="256" y2="256" x1="1008" />
            <wire x2="1184" y1="256" y2="256" x1="1024" />
        </branch>
        <instance x="1184" y="288" name="XLXI_43" orien="R0" />
        <branch name="Buzzer">
            <wire x2="1440" y1="256" y2="256" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1440" y="256" name="Buzzer" orien="R0" />
        <instance x="512" y="192" name="XLXI_24" orien="R90" />
        <branch name="G0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="256" type="branch" />
            <wire x2="688" y1="256" y2="256" x1="640" />
        </branch>
        <instance x="1008" y="320" name="XLXI_23" orien="R270" />
    </sheet>
</drawing>
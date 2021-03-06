<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="V5" />
        <signal name="Q(1)" />
        <signal name="Q(4)" />
        <signal name="Q(6)" />
        <signal name="Q(7)" />
        <signal name="Q(7:0)" />
        <signal name="Q(0)" />
        <signal name="clk" />
        <signal name="Q(2)" />
        <signal name="Q(3)" />
        <signal name="rst" />
        <signal name="XLXN_55" />
        <signal name="XLXN_33" />
        <signal name="Q(5)" />
        <signal name="XLXN_79" />
        <signal name="LD" />
        <signal name="C60" />
        <signal name="XLXN_84" />
        <port polarity="Output" name="Q(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="CT74LS161">
            <timestamp>2017-6-1T16:30:0</timestamp>
            <rect width="436" x="32" y="-232" height="200" />
            <line x2="368" y1="0" y2="-32" x1="368" />
            <line x2="416" y1="-4" y2="-32" x1="416" />
            <line x2="320" y1="0" y2="-32" x1="320" />
            <line x2="272" y1="-32" y2="0" x1="272" />
            <line x2="0" y1="-64" y2="-64" x1="32" />
            <line x2="144" y1="-32" y2="0" x1="144" />
            <line x2="156" y1="-60" y2="-60" x1="128" />
            <line x2="208" y1="-60" y2="-60" x1="180" />
            <line x2="192" y1="-32" y2="0" x1="192" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="0" y1="-112" y2="-112" x1="32" />
            <line x2="288" y1="-232" y2="-256" x1="288" />
            <line x2="336" y1="-232" y2="-252" x1="336" />
            <line x2="240" y1="-232" y2="-256" x1="240" />
            <line x2="176" y1="-232" y2="-260" x1="176" />
            <line x2="468" y1="-144" y2="-144" x1="496" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_8">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="xxxx">
            <blockpin signalname="XLXN_55" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="LD" name="I" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="Q(0)" name="I0" />
            <blockpin signalname="Q(3)" name="I1" />
            <blockpin signalname="LD" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_19">
            <blockpin signalname="Q(4)" name="I0" />
            <blockpin signalname="Q(6)" name="I1" />
            <blockpin signalname="XLXN_79" name="O" />
        </block>
        <block symbolname="CT74LS161" name="CT0">
            <blockpin signalname="XLXN_55" name="D0" />
            <blockpin signalname="XLXN_55" name="D1" />
            <blockpin signalname="XLXN_55" name="D2" />
            <blockpin signalname="XLXN_55" name="D3" />
            <blockpin signalname="clk" name="CP" />
            <blockpin signalname="LD" name="LD" />
            <blockpin signalname="rst" name="CR" />
            <blockpin signalname="V5" name="CT_P" />
            <blockpin signalname="V5" name="CT_T" />
            <blockpin signalname="Q(0)" name="Q0" />
            <blockpin signalname="Q(1)" name="Q1" />
            <blockpin signalname="Q(2)" name="Q2" />
            <blockpin signalname="Q(3)" name="Q3" />
            <blockpin name="CO" />
        </block>
        <block symbolname="CT74LS161" name="CT1">
            <attr value="1" name="LD">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
            <blockpin signalname="XLXN_55" name="D0" />
            <blockpin signalname="XLXN_55" name="D1" />
            <blockpin signalname="XLXN_55" name="D2" />
            <blockpin signalname="XLXN_55" name="D3" />
            <blockpin signalname="clk" name="CP" />
            <blockpin signalname="C60" name="LD" />
            <blockpin signalname="rst" name="CR" />
            <blockpin signalname="XLXN_33" name="CT_P" />
            <blockpin signalname="XLXN_33" name="CT_T" />
            <blockpin signalname="Q(4)" name="Q0" />
            <blockpin signalname="Q(5)" name="Q1" />
            <blockpin signalname="Q(6)" name="Q2" />
            <blockpin signalname="Q(7)" name="Q3" />
            <blockpin name="CO" />
        </block>
        <block symbolname="or2" name="XLXI_45">
            <blockpin signalname="XLXN_79" name="I0" />
            <blockpin signalname="LD" name="I1" />
            <blockpin signalname="C60" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <iomarker fontsize="28" x="1552" y="912" name="Q(7:0)" orien="R0" />
        <instance x="1408" y="880" name="xxxx" orien="R0" />
        <iomarker fontsize="28" x="96" y="768" name="rst" orien="R180" />
        <instance x="1200" y="688" name="CT0" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="208" y="-176" type="instance" />
        </instance>
        <instance x="192" y="672" name="CT1" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="208" y="-176" type="instance" />
        </instance>
        <iomarker fontsize="28" x="96" y="608" name="clk" orien="R180" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="576" type="branch" />
            <wire x2="1088" y1="544" y2="576" x1="1088" />
            <wire x2="1168" y1="576" y2="576" x1="1088" />
            <wire x2="1200" y1="576" y2="576" x1="1168" />
            <wire x2="1200" y1="528" y2="528" x1="1168" />
            <wire x2="1168" y1="528" y2="576" x1="1168" />
        </branch>
        <branch name="Q(1)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="320" type="branch" />
            <wire x2="1488" y1="320" y2="432" x1="1488" />
        </branch>
        <branch name="Q(4)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="304" type="branch" />
            <wire x2="528" y1="304" y2="384" x1="528" />
            <wire x2="528" y1="384" y2="416" x1="528" />
            <wire x2="784" y1="384" y2="384" x1="528" />
            <wire x2="784" y1="384" y2="432" x1="784" />
        </branch>
        <branch name="Q(6)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="304" type="branch" />
            <wire x2="432" y1="304" y2="352" x1="432" />
            <wire x2="432" y1="352" y2="416" x1="432" />
            <wire x2="848" y1="352" y2="352" x1="432" />
            <wire x2="848" y1="352" y2="432" x1="848" />
        </branch>
        <branch name="Q(7)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="304" type="branch" />
            <wire x2="368" y1="304" y2="416" x1="368" />
        </branch>
        <branch name="Q(7:0)">
            <wire x2="1552" y1="912" y2="912" x1="1344" />
        </branch>
        <branch name="Q(0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="320" type="branch" />
            <wire x2="1536" y1="384" y2="384" x1="944" />
            <wire x2="1536" y1="384" y2="432" x1="1536" />
            <wire x2="944" y1="384" y2="432" x1="944" />
            <wire x2="1536" y1="320" y2="384" x1="1536" />
        </branch>
        <branch name="clk">
            <wire x2="128" y1="608" y2="608" x1="96" />
            <wire x2="128" y1="608" y2="736" x1="128" />
            <wire x2="1168" y1="736" y2="736" x1="128" />
            <wire x2="192" y1="608" y2="608" x1="128" />
            <wire x2="1200" y1="624" y2="624" x1="1168" />
            <wire x2="1168" y1="624" y2="736" x1="1168" />
        </branch>
        <branch name="Q(3)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="320" type="branch" />
            <wire x2="1376" y1="416" y2="416" x1="1008" />
            <wire x2="1376" y1="416" y2="432" x1="1376" />
            <wire x2="1008" y1="416" y2="432" x1="1008" />
            <wire x2="1376" y1="320" y2="416" x1="1376" />
        </branch>
        <branch name="rst">
            <wire x2="384" y1="768" y2="768" x1="96" />
            <wire x2="1392" y1="768" y2="768" x1="384" />
            <wire x2="384" y1="672" y2="768" x1="384" />
            <wire x2="1392" y1="688" y2="768" x1="1392" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="464" y1="672" y2="704" x1="464" />
            <wire x2="512" y1="704" y2="704" x1="464" />
            <wire x2="560" y1="704" y2="704" x1="512" />
            <wire x2="608" y1="704" y2="704" x1="560" />
            <wire x2="1472" y1="704" y2="704" x1="608" />
            <wire x2="1520" y1="704" y2="704" x1="1472" />
            <wire x2="1568" y1="704" y2="704" x1="1520" />
            <wire x2="1616" y1="704" y2="704" x1="1568" />
            <wire x2="1472" y1="704" y2="752" x1="1472" />
            <wire x2="512" y1="672" y2="704" x1="512" />
            <wire x2="560" y1="672" y2="704" x1="560" />
            <wire x2="608" y1="672" y2="704" x1="608" />
            <wire x2="1472" y1="688" y2="704" x1="1472" />
            <wire x2="1520" y1="688" y2="704" x1="1520" />
            <wire x2="1568" y1="688" y2="704" x1="1568" />
            <wire x2="1616" y1="688" y2="704" x1="1616" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="192" y1="512" y2="512" x1="176" />
            <wire x2="176" y1="512" y2="560" x1="176" />
            <wire x2="192" y1="560" y2="560" x1="176" />
            <wire x2="176" y1="560" y2="928" x1="176" />
            <wire x2="272" y1="928" y2="928" x1="176" />
        </branch>
        <instance x="720" y="432" name="XLXI_19" orien="R90" />
        <instance x="880" y="432" name="XLXI_3" orien="R90" />
        <instance x="1024" y="544" name="XLXI_8" orien="R0" />
        <branch name="Q(2)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="320" type="branch" />
            <wire x2="1440" y1="320" y2="432" x1="1440" />
        </branch>
        <instance x="720" y="752" name="XLXI_45" orien="R180" />
        <branch name="XLXN_79">
            <wire x2="816" y1="816" y2="816" x1="720" />
            <wire x2="816" y1="688" y2="816" x1="816" />
        </branch>
        <branch name="LD">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="800" type="branch" />
            <wire x2="816" y1="928" y2="928" x1="496" />
            <wire x2="816" y1="880" y2="880" x1="720" />
            <wire x2="976" y1="880" y2="880" x1="816" />
            <wire x2="816" y1="880" y2="928" x1="816" />
            <wire x2="976" y1="688" y2="800" x1="976" />
            <wire x2="976" y1="800" y2="880" x1="976" />
            <wire x2="1344" y1="800" y2="800" x1="976" />
            <wire x2="1344" y1="688" y2="800" x1="1344" />
        </branch>
        <branch name="C60">
            <attrtext style="alignment:HARD-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="336" y="816" type="branch" />
            <wire x2="336" y1="672" y2="816" x1="336" />
            <wire x2="336" y1="816" y2="848" x1="336" />
            <wire x2="464" y1="848" y2="848" x1="336" />
        </branch>
        <instance x="496" y="896" name="XLXI_10" orien="R180" />
        <branch name="Q(5)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="304" type="branch" />
            <wire x2="480" y1="304" y2="416" x1="480" />
        </branch>
    </sheet>
</drawing>
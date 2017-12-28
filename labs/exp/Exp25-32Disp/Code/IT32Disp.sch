<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="V5" />
        <signal name="Div(25)" />
        <signal name="rst" />
        <signal name="clk_100mhz">
            <attr value="t9" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="SW_OK(0)" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <signal name="Bi(31:0)" />
        <signal name="readn" />
        <signal name="blink(7:0)" />
        <signal name="RDY" />
        <signal name="SW(15:0)" />
        <signal name="BTN_x(4:0)" />
        <signal name="BTN_y(3:0)" />
        <signal name="RSTN" />
        <signal name="SW_OK(7:5),SW_OK(15),SW_OK(0)" />
        <signal name="BTN_OK(3:0)" />
        <signal name="BTN_OK(2:0)" />
        <signal name="XLXN_444(4:0)" />
        <signal name="CR" />
        <signal name="Ai(31:0)" />
        <signal name="SW_OK(15:0)" />
        <signal name="Div(31:0)" />
        <signal name="Div(20)" />
        <signal name="Pulse(3:0)" />
        <signal name="SW(15:8)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="AN(3:0)" />
        <signal name="SW_OK(1),Div(19:18)" />
        <signal name="point_out(7:0)" />
        <signal name="Buzzer" />
        <signal name="G0" />
        <port polarity="Input" name="clk_100mhz" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <port polarity="Output" name="readn" />
        <port polarity="Output" name="RDY" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Output" name="BTN_x(4:0)" />
        <port polarity="Input" name="BTN_y(3:0)" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="Buzzer" />
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
        <blockdef name="SAnti_jitter">
            <timestamp>2015-12-27T10:36:31</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="300" x="64" y="-248" height="256" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" x1="64" />
            <line x2="32" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-192" y2="-192" x1="64" />
            <line x2="400" y1="-192" y2="-192" style="linewidth:W" x1="368" />
            <line x2="364" y1="-160" y2="-160" x1="400" />
            <line x2="364" y1="-224" y2="-224" x1="400" />
            <line x2="364" y1="-16" y2="-16" x1="400" />
            <line x2="400" y1="-48" y2="-48" style="linewidth:W" x1="368" />
            <line x2="400" y1="-128" y2="-128" style="linewidth:W" x1="368" />
            <line x2="400" y1="-96" y2="-96" style="linewidth:W" x1="368" />
        </blockdef>
        <blockdef name="SEnter_2_32">
            <timestamp>2015-12-27T10:39:45</timestamp>
            <line x2="288" y1="-240" y2="-240" x1="320" />
            <line x2="320" y1="-192" y2="-192" style="linewidth:W" x1="288" />
            <line x2="320" y1="-128" y2="-128" style="linewidth:W" x1="288" />
            <line x2="320" y1="-64" y2="-64" style="linewidth:W" x1="288" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="256" x="32" y="-272" height="272" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" x1="32" />
            <line x2="0" y1="-240" y2="-240" x1="32" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="clkdiv">
            <timestamp>2016-8-15T14:39:45</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(0,255,255);fillstyle:Solid" width="208" x="16" y="-144" height="144" />
            <line x2="0" y1="-32" y2="-32" x1="16" />
            <line x2="0" y1="-112" y2="-112" x1="16" />
            <line x2="240" y1="-112" y2="-112" style="linewidth:W" x1="224" />
        </blockdef>
        <blockdef name="Display">
            <timestamp>2016-8-15T14:30:1</timestamp>
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="Seg7_Dev">
            <timestamp>2016-1-2T8:4:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(192,173,254);fillstyle:Solid" width="288" x="32" y="-240" height="240" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="352" y1="-192" y2="-192" style="linewidth:W" x1="320" />
            <line x2="352" y1="-64" y2="-64" style="linewidth:W" x1="320" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="32" y1="-144" y2="-144" x1="0" />
            <line x2="32" y1="-176" y2="-176" x1="0" />
            <line x2="0" y1="-96" y2="-96" style="linewidth:W" x1="32" />
        </blockdef>
        <block symbolname="SAnti_jitter" name="M2">
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="BTN_y(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="BTN_x(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_444(4:0)" name="Key_out(4:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
            <blockpin signalname="Pulse(3:0)" name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
        </block>
        <block symbolname="SEnter_2_32" name="M4">
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="Ai(31:0)" name="Ai(31:0)" />
            <blockpin signalname="Bi(31:0)" name="Bi(31:0)" />
            <blockpin signalname="blink(7:0)" name="blink(7:0)" />
            <blockpin signalname="XLXN_444(4:0)" name="Din(4:0)" />
            <blockpin signalname="RDY" name="D_ready" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="SW_OK(7:5),SW_OK(15),SW_OK(0)" name="Ctrl(4:0)" />
            <blockpin signalname="BTN_OK(2:0)" name="BTN(2:0)" />
        </block>
        <block symbolname="clkdiv" name="M1">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="clk_100mhz" name="clk" />
        </block>
        <block symbolname="Display" name="M3">
            <blockpin signalname="blink(7:0)" name="LES(7:0)" />
            <blockpin signalname="SEG_PEN" name="SEG_PEN" />
            <blockpin signalname="seg_sout" name="seg_sout" />
            <blockpin signalname="seg_clrn" name="seg_clrn" />
            <blockpin signalname="SW(15:8)" name="point(7:0)" />
            <blockpin signalname="Ai(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="seg_clk" name="seg_clk" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(20)" name="Start" />
        </block>
        <block symbolname="Seg7_Dev" name="M31">
            <blockpin signalname="blink(7:0)" name="LES(7:0)" />
            <blockpin signalname="SW_OK(1),Div(19:18)" name="Scan(2:0)" />
            <blockpin signalname="SEGMENT(7:0)" name="SEGMENT(7:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Ai(31:0)" name="Hexs(31:0)" />
        </block>
        <block symbolname="buf" name="XLXI_43">
            <blockpin signalname="V5" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_1">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="G0" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="304" cy="134" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="304" cy="132" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="364" cy="134" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="364" cy="132" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="428" cy="134" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="428" cy="132" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="492" cy="134" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="492" cy="132" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="304" cy="186" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="304" cy="184" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="304" cy="234" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="304" cy="232" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="364" cy="186" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="364" cy="184" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="428" cy="186" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="428" cy="184" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="364" cy="234" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="428" cy="234" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="428" cy="232" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="364" cy="232" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="492" cy="186" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="492" cy="184" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="492" cy="234" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="492" cy="232" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="304" cy="334" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="304" cy="332" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="364" cy="334" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="428" cy="334" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="428" cy="332" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="364" cy="332" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="304" cy="282" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="304" cy="280" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="364" cy="282" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="364" cy="280" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="428" cy="282" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="428" cy="280" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="492" cy="282" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="492" cy="280" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="564" cy="182" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="564" cy="180" />
        <branch name="readn">
            <wire x2="816" y1="304" y2="304" x1="800" />
            <wire x2="800" y1="304" y2="400" x1="800" />
            <wire x2="2016" y1="400" y2="400" x1="800" />
            <wire x2="2016" y1="112" y2="112" x1="1904" />
            <wire x2="2048" y1="112" y2="112" x1="2016" />
            <wire x2="2016" y1="112" y2="400" x1="2016" />
        </branch>
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="20" cx="492" cy="334" />
        <circle style="linecolor:rgb(0,255,0);fillcolor:rgb(0,0,0);fillstyle:Solid" r="12" cx="492" cy="332" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="296" y="388" height="84" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="300" y="436" height="28" />
        <text style="fontsize:20;fontname:Arial" x="296" y="496">SW14</text>
        <text style="fontsize:58;fontname:Arial" x="372" y="424">...</text>
        <text style="fontsize:20;fontname:Arial" x="432" y="496">SW1</text>
        <text style="fontsize:20;fontname:Arial" x="504" y="492">SW0</text>
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="444" y="388" height="84" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="448" y="396" height="28" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="512" y="384" height="84" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="516" y="432" height="28" />
        <branch name="blink(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="288" type="branch" />
            <wire x2="1952" y1="288" y2="288" x1="1904" />
            <wire x2="1968" y1="288" y2="288" x1="1952" />
            <wire x2="1968" y1="288" y2="368" x1="1968" />
            <wire x2="2336" y1="368" y2="368" x1="1968" />
        </branch>
        <branch name="SW(15:0)">
            <wire x2="576" y1="512" y2="512" x1="192" />
            <wire x2="816" y1="272" y2="272" x1="576" />
            <wire x2="576" y1="272" y2="512" x1="576" />
        </branch>
        <branch name="BTN_x(4:0)">
            <wire x2="528" y1="368" y2="368" x1="192" />
            <wire x2="816" y1="224" y2="224" x1="528" />
            <wire x2="528" y1="224" y2="368" x1="528" />
        </branch>
        <branch name="BTN_y(3:0)">
            <wire x2="592" y1="160" y2="160" x1="208" />
            <wire x2="592" y1="160" y2="176" x1="592" />
            <wire x2="816" y1="176" y2="176" x1="592" />
        </branch>
        <branch name="RSTN">
            <wire x2="816" y1="112" y2="112" x1="144" />
        </branch>
        <iomarker fontsize="28" x="208" y="160" name="BTN_y(3:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="368" name="BTN_x(4:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="512" name="SW(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1968" y="64" name="RDY" orien="R0" />
        <iomarker fontsize="28" x="144" y="112" name="RSTN" orien="R180" />
        <iomarker fontsize="28" x="2048" y="112" name="readn" orien="R0" />
        <branch name="SW_OK(7:5),SW_OK(15),SW_OK(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="288" type="branch" />
            <wire x2="1488" y1="288" y2="288" x1="1424" />
            <wire x2="1584" y1="288" y2="288" x1="1488" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <wire x2="1328" y1="240" y2="240" x1="1184" />
        </branch>
        <branch name="BTN_OK(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="1536" y="240" type="branch" />
            <wire x2="1536" y1="240" y2="240" x1="1424" />
            <wire x2="1584" y1="240" y2="240" x1="1536" />
        </branch>
        <branch name="RDY">
            <wire x2="1552" y1="176" y2="176" x1="1184" />
            <wire x2="1584" y1="176" y2="176" x1="1552" />
            <wire x2="1968" y1="64" y2="64" x1="1552" />
            <wire x2="1552" y1="64" y2="176" x1="1552" />
        </branch>
        <branch name="XLXN_444(4:0)">
            <wire x2="1584" y1="144" y2="144" x1="1184" />
        </branch>
        <branch name="CR">
            <wire x2="1280" y1="112" y2="112" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1280" y="112" name="CR" orien="R0" />
        <bustap x2="1424" y1="288" y2="288" x1="1328" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="228" y="388" height="84" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="232" y="396" height="28" />
        <text style="fontsize:20;fontname:Arial" x="220" y="496">SW15</text>
        <iomarker fontsize="28" x="208" y="688" name="clk_100mhz" orien="R180" />
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:26;fontname:Arial;textcolor:rgb(255,0,0)" attrname="Name" x="1200" y="464" type="branch" />
            <wire x2="1200" y1="464" y2="464" x1="1168" />
        </branch>
        <instance x="784" y="336" name="M2" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="160" y="-200" type="instance" />
        </instance>
        <instance x="1584" y="352" name="M4" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="128" y="-224" type="instance" />
        </instance>
        <bustap x2="1424" y1="240" y2="240" x1="1328" />
        <branch name="Pulse(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="208" type="branch" />
            <wire x2="1296" y1="208" y2="208" x1="1184" />
        </branch>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="3420" y="128" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="3324" y="128" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="3420" y="216" height="96" />
        <text style="fontsize:40;fontname:Arial" x="3428" y="172">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="3356" y="284" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="3324" y="216" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="3356" y="128" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="3328" y="260">e</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="3380" y="300">d</text>
        <text style="fontsize:40;fontname:Arial" x="3332" y="180">f</text>
        <text style="fontsize:40;fontname:Arial" x="3428" y="260">c</text>
        <text style="fontsize:40;fontname:Arial" x="3384" y="140">a</text>
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="3476" cy="296" />
        <text style="fontsize:28;fontname:Arial" x="3460" y="296">dp</text>
        <rect style="linewidth:W;linecolor:rgb(0,0,255);linestyle:Dot" width="724" x="2772" y="112" height="236" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="3356" y="200" height="32" />
        <text style="fontsize:40;fontname:Arial" x="3380" y="212">g</text>
        <text style="fontsize:28;fontname:Arial" x="3360" y="328">AN0</text>
        <text style="alignment:CENTER;fontsize:40;fontname:Times New Roman;textcolor:rgb(255,0,0)" x="3128" y="84">Seven-Digit: Seven-Segment LED Display</text>
        <branch name="seg_clk">
            <wire x2="2784" y1="128" y2="128" x1="2720" />
        </branch>
        <branch name="seg_sout">
            <wire x2="2784" y1="192" y2="192" x1="2720" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="2784" y1="256" y2="256" x1="2720" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="2784" y1="320" y2="320" x1="2720" />
        </branch>
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="3180" cy="232" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="3236" cy="232" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="3288" cy="232" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="3084" y="128" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2988" y="128" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="3084" y="216" height="96" />
        <text style="fontsize:40;fontname:Arial" x="3092" y="172">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="3020" y="284" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2988" y="216" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="3020" y="128" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2992" y="260">e</text>
        <text style="fontsize:40;fontname:Arial" x="2996" y="180">f</text>
        <text style="fontsize:40;fontname:Arial" x="3092" y="260">c</text>
        <text style="fontsize:40;fontname:Arial" x="3036" y="140">a</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="3040" y="300">d</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="3020" y="200" height="32" />
        <text style="fontsize:40;fontname:Arial" x="3044" y="212">g</text>
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="3136" cy="296" />
        <text style="fontsize:28;fontname:Arial" x="3120" y="296">dp</text>
        <line x2="2980" y1="348" y2="112" x1="2980" />
        <text style="fontsize:28;fontname:Arial" x="3024" y="332">AN7</text>
        <iomarker fontsize="28" x="2784" y="128" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="2784" y="192" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="2784" y="320" name="seg_clrn" orien="R0" />
        <iomarker fontsize="28" x="2784" y="256" name="SEG_PEN" orien="R0" />
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:24;fontname:Arial" attrname="Name" x="2272" y="256" type="branch" />
            <wire x2="2336" y1="256" y2="256" x1="2272" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:24;fontname:Arial" attrname="Name" x="2288" y="192" type="branch" />
            <wire x2="2336" y1="192" y2="192" x1="2288" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="144" type="branch" />
            <wire x2="2336" y1="144" y2="144" x1="2304" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="112" type="branch" />
            <wire x2="2336" y1="112" y2="112" x1="2288" />
        </branch>
        <instance x="928" y="576" name="M1" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="80" y="-64" type="instance" />
        </instance>
        <instance x="2336" y="416" name="M3" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="144" y="-268" type="instance" />
        </instance>
        <branch name="SW(15:8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="336" type="branch" />
            <wire x2="2336" y1="336" y2="336" x1="2272" />
        </branch>
        <branch name="clk_100mhz">
            <wire x2="768" y1="688" y2="688" x1="208" />
            <wire x2="1504" y1="64" y2="64" x1="768" />
            <wire x2="1504" y1="64" y2="112" x1="1504" />
            <wire x2="1584" y1="112" y2="112" x1="1504" />
            <wire x2="768" y1="64" y2="144" x1="768" />
            <wire x2="816" y1="144" y2="144" x1="768" />
            <wire x2="768" y1="144" y2="464" x1="768" />
            <wire x2="928" y1="464" y2="464" x1="768" />
            <wire x2="768" y1="464" y2="688" x1="768" />
            <wire x2="2288" y1="32" y2="32" x1="1504" />
            <wire x2="2288" y1="32" y2="80" x1="2288" />
            <wire x2="2336" y1="80" y2="80" x1="2288" />
            <wire x2="1504" y1="32" y2="64" x1="1504" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="320" type="branch" />
            <wire x2="1200" y1="368" y2="368" x1="848" />
            <wire x2="848" y1="368" y2="544" x1="848" />
            <wire x2="928" y1="544" y2="544" x1="848" />
            <wire x2="1200" y1="320" y2="320" x1="1184" />
            <wire x2="1200" y1="320" y2="368" x1="1200" />
            <wire x2="1216" y1="320" y2="320" x1="1200" />
        </branch>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" attrname="Name" x="2192" y="304" type="branch" />
            <wire x2="2128" y1="160" y2="160" x1="1904" />
            <wire x2="2128" y1="160" y2="304" x1="2128" />
            <wire x2="2192" y1="304" y2="304" x1="2128" />
            <wire x2="2336" y1="304" y2="304" x1="2192" />
        </branch>
        <branch name="Bi(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" attrname="Name" x="1936" y="224" type="branch" />
            <wire x2="1936" y1="224" y2="224" x1="1904" />
            <wire x2="2080" y1="224" y2="224" x1="1936" />
        </branch>
        <branch name="SW_OK(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="1216" y="288" type="branch" />
            <wire x2="1216" y1="288" y2="288" x1="1184" />
            <wire x2="1312" y1="288" y2="288" x1="1216" />
            <wire x2="1328" y1="288" y2="288" x1="1312" />
        </branch>
        <instance x="3120" y="496" name="XLXI_1" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="Name" x="3152" y="512" type="branch" />
            <wire x2="3184" y1="512" y2="512" x1="3152" />
            <wire x2="3184" y1="496" y2="512" x1="3184" />
        </branch>
        <instance x="3312" y="544" name="XLXI_2" orien="R0" />
        <branch name="G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:38;fontname:Arial;textcolor:rgb(255,0,0)" attrname="Name" x="3328" y="400" type="branch" />
            <wire x2="3376" y1="400" y2="400" x1="3328" />
            <wire x2="3376" y1="400" y2="416" x1="3376" />
        </branch>
    </sheet>
    <sheet sheetnum="2" width="1760" height="1360">
        <branch name="SEGMENT(7:0)">
            <wire x2="992" y1="112" y2="112" x1="960" />
            <wire x2="1504" y1="32" y2="32" x1="992" />
            <wire x2="992" y1="32" y2="112" x1="992" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="992" y1="240" y2="240" x1="960" />
            <wire x2="992" y1="240" y2="368" x1="992" />
            <wire x2="1600" y1="368" y2="368" x1="992" />
        </branch>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1660" y="112" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1564" y="112" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1660" y="200" height="96" />
        <text style="fontsize:40;fontname:Arial" x="1668" y="156">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="1596" y="268" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1564" y="200" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="1596" y="112" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="1568" y="244">e</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="1620" y="284">d</text>
        <text style="fontsize:40;fontname:Arial" x="1572" y="164">f</text>
        <text style="fontsize:40;fontname:Arial" x="1668" y="244">c</text>
        <text style="fontsize:40;fontname:Arial" x="1624" y="124">a</text>
        <line x2="1556" y1="332" y2="96" x1="1556" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="1716" cy="280" />
        <text style="fontsize:28;fontname:Arial" x="1700" y="280">dp</text>
        <rect style="linewidth:W;linecolor:rgb(0,0,255);linestyle:Dot" width="724" x="1012" y="96" height="236" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1480" y="112" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1384" y="112" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1480" y="200" height="96" />
        <text style="fontsize:40;fontname:Arial" x="1488" y="156">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="1416" y="268" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1384" y="200" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="1416" y="112" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="1388" y="244">e</text>
        <text style="fontsize:40;fontname:Arial" x="1392" y="164">f</text>
        <text style="fontsize:40;fontname:Arial" x="1488" y="244">c</text>
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="1536" cy="284" />
        <text style="fontsize:28;fontname:Arial" x="1520" y="284">dp</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="1440" y="284">d</text>
        <text style="fontsize:28;fontname:Arial" x="1420" y="316">AN1</text>
        <text style="fontsize:40;fontname:Arial" x="1436" y="124">a</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="1416" y="184" height="32" />
        <text style="fontsize:40;fontname:Arial" x="1440" y="196">g</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="1596" y="184" height="32" />
        <text style="fontsize:40;fontname:Arial" x="1620" y="196">g</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1304" y="112" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1208" y="112" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1304" y="200" height="96" />
        <text style="fontsize:40;fontname:Arial" x="1312" y="156">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="1240" y="268" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1208" y="200" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="1240" y="112" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="1212" y="244">e</text>
        <text style="fontsize:40;fontname:Arial" x="1216" y="164">f</text>
        <text style="fontsize:40;fontname:Arial" x="1312" y="244">c</text>
        <text style="fontsize:40;fontname:Arial" x="1256" y="124">a</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="1260" y="284">d</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="1240" y="184" height="32" />
        <text style="fontsize:40;fontname:Arial" x="1264" y="196">g</text>
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="1356" cy="280" />
        <text style="fontsize:28;fontname:Arial" x="1340" y="280">dp</text>
        <line x2="1200" y1="332" y2="96" x1="1200" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1128" y="112" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1032" y="112" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1128" y="200" height="96" />
        <text style="fontsize:40;fontname:Arial" x="1136" y="156">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="1064" y="268" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="1032" y="200" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="1064" y="112" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="1036" y="244">e</text>
        <text style="fontsize:40;fontname:Arial" x="1040" y="164">f</text>
        <text style="fontsize:40;fontname:Arial" x="1136" y="244">c</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="1064" y="184" height="32" />
        <text style="fontsize:40;fontname:Arial" x="1088" y="196">g</text>
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="1180" cy="280" />
        <text style="fontsize:28;fontname:Arial" x="1164" y="280">dp</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="1084" y="284">d</text>
        <text style="fontsize:40;fontname:Arial" x="1084" y="124">a</text>
        <text style="fontsize:28;fontname:Arial" x="1068" y="316">AN3</text>
        <text style="fontsize:28;fontname:Arial" x="1244" y="316">AN2</text>
        <line x2="1376" y1="332" y2="96" x1="1376" />
        <text style="alignment:CENTER;fontsize:40;fontname:Times New Roman;textcolor:rgb(255,0,0)" x="1368" y="68">Four-Digit: Seven-Segment LED Display</text>
        <text style="fontsize:28;fontname:Arial" x="1600" y="312">AN0</text>
        <branch name="SW_OK(1),Div(19:18)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:20;fontname:Arial" attrname="Name" x="240" y="96" type="branch" />
            <wire x2="608" y1="96" y2="96" x1="240" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="128" y="160" type="branch" />
            <wire x2="608" y1="160" y2="160" x1="128" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="176" y="128" type="branch" />
            <wire x2="608" y1="128" y2="128" x1="176" />
        </branch>
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="240" type="branch" />
            <wire x2="608" y1="240" y2="240" x1="208" />
        </branch>
        <branch name="blink(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="192" y="272" type="branch" />
            <wire x2="608" y1="272" y2="272" x1="192" />
        </branch>
        <iomarker fontsize="28" x="1600" y="368" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1504" y="32" name="SEGMENT(7:0)" orien="R0" />
        <instance x="608" y="304" name="M31" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="128" y="-48" type="instance" />
        </instance>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="384" y="432" type="branch" />
            <wire x2="608" y1="432" y2="432" x1="384" />
        </branch>
        <instance x="608" y="464" name="XLXI_43" orien="R0" />
        <branch name="Buzzer">
            <wire x2="864" y1="432" y2="432" x1="832" />
        </branch>
        <iomarker fontsize="28" x="864" y="432" name="Buzzer" orien="R0" />
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="160" y="208" type="branch" />
            <wire x2="480" y1="208" y2="208" x1="160" />
            <wire x2="608" y1="208" y2="208" x1="480" />
        </branch>
    </sheet>
</drawing>
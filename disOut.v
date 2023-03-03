module FGandDisplay(
   input clk,reset,
   output [6:0] seg,
   output [3:0] an
);


reg signed[18:0] a,b,c,d,e;
reg signed[18:0] wa11,wb11,wc11,wd11,wa12,wb12,wc12,wd12,wa13,wb13,wc13,wd13,wa14,wb14,wc14,wd14;
reg signed[18:0] wa21,wb21,wc21,wd21,wa22,wb22,wc22,wd22,wa23,wb23,wc23,wd23,wa24,wb24,wc24,wd24;
reg signed[18:0] wa31,wb31,wc31,wd31,wa32,wb32,wc32,wd32,wa33,wb33,wc33,wd33,wa34,wb34,wc34,wd34;
reg signed[18:0] wa41,wb41,wc41,wd41,wa42,wb42,wc42,wd42,wa43,wb43,wc43,wd43,wa44,wb44,wc44,wd44;
reg signed[18:0] wf1,wf2,wf3,wf4;
wire signed[18:0] g11,g12,g13,g14,g21,g22,g23,g24,g31,g32,g33,g34,g41,g42,g43,g44,fg;

initial
begin
    a = 7'd10;
    b = 7'd20;
    c = 7'd30;
    d = 7'd40;
    e = 7'd35;//actually number
    ag = e;
    wa11 = 4'b0010;
    wb11 = 4'b0010;
    wc11 = 4'b0010;
    wd11 = 4'b0010;
    wa12 = 4'b0010;
    wb12 = 4'b0010;
    wc12 = 4'b0010;
    wd12 = 4'b0010;
    wa13 = 4'b0010;
    wb13 = 4'b0010;
    wc13 = 4'b0010;
    wd13 = 4'b0010;
    wa14 = 4'b0010;
    wb14 = 4'b0010;
    wc14 = 4'b0010;
    wd14 = 4'b0010;

    wa21 = 4'b0010;
    wb21 = 4'b0010;
    wc21 = 4'b0010;
    wd21 = 4'b0010;
    wa22 = 4'b0010;
    wb22 = 4'b0010;
    wc22 = 4'b0010;
    wd22 = 4'b0010;
    wa23 = 4'b0010;
    wb23 = 4'b0010;
    wc23 = 4'b0010;
    wd23 = 4'b0010;
    wa24 = 4'b0010;
    wb24 = 4'b0010;
    wc24 = 4'b0010;
    wd24 = 4'b0010;

    wa31 = 4'b0010;
    wb31 = 4'b0010;
    wc31 = 4'b0010;
    wd31 = 4'b0010;
    wa32 = 4'b0010;
    wb32 = 4'b0010;
    wc32 = 4'b0010;
    wd32 = 4'b0010;
    wa33 = 4'b0010;
    wb33 = 4'b0010;
    wc33 = 4'b0010;
    wd33 = 4'b0010;
    wa34 = 4'b0010;
    wb34 = 4'b0010;
    wc34 = 4'b0010;
    wd34 = 4'b0010;

    wa41 = 4'b0010;
    wb41 = 4'b0010;
    wc41 = 4'b0010;
    wd41 = 4'b0010;
    wa42 = 4'b0010;
    wb42 = 4'b0010;
    wc42 = 4'b0010;
    wd42 = 4'b0010;
    wa43 = 4'b0010;
    wb43 = 4'b0010;
    wc43 = 4'b0010;
    wd43 = 4'b0010;
    wa44 = 4'b0010;
    wb44 = 4'b0010;
    wc44 = 4'b0010;
    wd44 = 4'b0010;

    wf1 = 4'b0010;
    wf2 = 4'b0010;
    wf3 = 4'b0010;
    wf4 = 4'b0010;
    #200
    pg= 4'd29;

end

grade grade1(.a(a),.b(b),.c(c),.d(d),.wa1(wa11),.wb1(wb11),.wc1(wc11),.wd1(wd11),.wa2(wa12),.wb2(wb12),.wc2(wc12),.wd2(wd12),.wa3(wa13),.wb3(wb13),.wc3(wc13),.wd3(wd13),.wa4(wa14),.wb4(wb14),.wc4(wc14),.wd4(wd14),.g1(g11),.g2(g12),.g3(g13),.g4(g14),.clk(clk));
grade grade2(.a(g11),.b(g12),.c(g13),.d(g14),.wa1(wa21),.wb1(wb21),.wc1(wc21),.wd1(wd21),.wa2(wa22),.wb2(wb22),.wc2(wc22),.wd2(wd22),.wa3(wa23),.wb3(wb23),.wc3(wc23),.wd3(wd23),.wa4(wa24),.wb4(wb24),.wc4(wc24),.wd4(wd24),.g1(g21),.g2(g22),.g3(g23),.g4(g24),.clk(clk));
grade grade3(.a(g21),.b(g22),.c(g23),.d(g24),.wa1(wa31),.wb1(wb31),.wc1(wc31),.wd1(wd31),.wa2(wa32),.wb2(wb32),.wc2(wc32),.wd2(wd32),.wa3(wa33),.wb3(wb33),.wc3(wc33),.wd3(wd33),.wa4(wa34),.wb4(wb34),.wc4(wc34),.wd4(wd34),.g1(g31),.g2(g32),.g3(g33),.g4(g34),.clk(clk));
grade grade4(.a(g31),.b(g32),.c(g33),.d(g34),.wa1(wa41),.wb1(wb41),.wc1(wc41),.wd1(wd41),.wa2(wa42),.wb2(wb42),.wc2(wc42),.wd2(wd42),.wa3(wa43),.wb3(wb43),.wc3(wc43),.wd3(wd43),.wa4(wa44),.wb4(wb44),.wc4(wc44),.wd4(wd44),.g1(g41),.g2(g42),.g3(g43),.g4(g44),.clk(clk));
FG fgf(.a(g41),.b(g42),.c(g43),.d(g44),.wa1(wf1),.wb1(wf2),.wc1(wf3),.wd1(wf4),.fg(fg),.clk(clk));

reg signed[18:0] ag,pg; //ag actually grade pg predict grade
wire signed[18:0] ls;//loss               
wire signed[18:0] gd41,gd42,gd43,gd44,gd31_1,gd31_2,gd31_3,gd31_4,gd32_1,gd32_2,gd32_3,gd32_4,gd33_1,gd33_2,gd33_3,gd33_4,gd34_1,gd34_2,gd34_3,gd34_4,gd21_1,gd21_2,gd21_3,gd21_4,gd22_1,gd22_2,gd22_3,gd22_4,gd23_1,gd23_2,gd23_3,gd23_4,gd24_1,gd24_2,gd24_3,gd24_4,gd11_1,gd11_2,gd11_3,gd11_4,gd12_1,gd12_2,gd12_3,gd12_4,gd13_1,gd13_2,gd13_3,gd13_4,gd14_1,gd14_2,gd14_3,gd14_4,gd01_1,gd01_2,gd01_3,gd01_4,gd02_1,gd02_2,gd02_3,gd02_4,gd03_1,gd03_2,gd03_3,gd03_4,gd04_1,gd04_2,gd04_3,gd04_4;    //ok
//gradient
wire signed[18:0] wA41,wA42,wA43,wA44,wA31_1,wA31_2,wA31_3,wA31_4,wA32_1,wA32_2,wA32_3,wA32_4,wA33_1,wA33_2,wA33_3,wA33_4,wA34_1,wA34_2,wA34_3,wA34_4,wA21_1,wA21_2,wA21_3,wA21_4,wA22_1,wA22_2,wA22_3,wA22_4,wA23_1,wA23_2,wA23_3,wA23_4,wA24_1,wA24_2,wA24_3,wA24_4,wA11_1,wA11_2,wA11_3,wA11_4,wA12_1,wA12_2,wA12_3,wA12_4,wA13_1,wA13_2,wA13_3,wA13_4,wA14_1,wA14_2,wA14_3,wA14_4,wA01_1,wA01_2,wA01_3,wA01_4,wA02_1,wA02_2,wA02_3,wA02_4,wA03_1,wA03_2,wA03_3,wA03_4,wA04_1,wA04_2,wA04_3,wA04_4;
//refreshed weight
loss l41(.ag(ag),.pg(pg),.ls(ls));        //output -> 4
GD G41(.inG(g41),.ls(ls),.gd(gd41));
weight w1(.gd((gd41<<<1)),.wb(wf1),.wa(wA41));

loss l42(.ag(ag),.pg(pg),.ls(ls));
GD G42(.inG(g42),.ls(ls),.gd(gd42));
weight w42(.gd((gd42<<<1)),.wb(wf2),.wa(wA42));

loss l43(.ag(ag),.pg(pg),.ls(ls));
GD G43(.inG(g43),.ls(ls),.gd(gd43));
weight w43(.gd((gd43<<<1)),.wb(wf3),.wa(wA43));

loss l44(.ag(ag),.pg(pg),.ls(ls));
GD G44(.inG(g44),.ls(ls),.gd(gd44));
weight w44(.gd((gd44<<<1)),.wb(wf4),.wa(wA44));

wire signed[18:0] e41,e42,e43,e44;
wire signed[18:0]totalWa4;
assign totalWa4 = wA41+wA42+wA43+wA44;
assign e41 = ((ls * wA41)<<<1) / totalWa4;    
assign e42 = ((ls * wA42)<<<1) / totalWa4; 
assign e43 = ((ls * wA43)<<<1) / totalWa4;
assign e44 = ((ls * wA44)<<<1) / totalWa4; //distribute loss
                                
GD G31_1(.inG(g31),.ls(e41),.gd(gd31_1));      //4 -> 3
weight w31_1(.gd(gd31_1),.wb(wa41),.wa(wA31_1));
GD G31_2(.inG(g32),.ls(e41),.gd(gd31_2));
weight w31_2(.gd(gd31_2),.wb(wb41),.wa(wA31_2));
GD G31_3(.inG(g33),.ls(e41),.gd(gd31_3));
weight w31_3(.gd(gd31_3),.wb(wc41),.wa(wA31_3));
GD G31_4(.inG(g34),.ls(e41),.gd(gd31_4));
weight w31_4(.gd(gd31_4),.wb(wd41),.wa(wA31_4));

GD G32_1(.inG(g31),.ls(e42),.gd(gd32_1));
weight w32_1(.gd(gd32_1),.wb(wa42),.wa(wA32_1));
GD G32_2(.inG(g32),.ls(e42),.gd(gd32_2));
weight w32_2(.gd(gd32_2),.wb(wb42),.wa(wA32_2));
GD G32_3(.inG(g33),.ls(e42),.gd(gd32_3));
weight w32_3(.gd(gd32_3),.wb(wc42),.wa(wA32_3));
GD G32_4(.inG(g34),.ls(e42),.gd(gd32_4));
weight w32_4(.gd(gd32_4),.wb(wd42),.wa(wA32_4));
//
GD G33_1(.inG(g31),.ls(e43),.gd(gd33_1));
weight w33_1(.gd(gd33_1),.wb(wa43),.wa(wA33_1));
GD G33_2(.inG(g32),.ls(e43),.gd(gd33_2));
weight w33_2(.gd(gd33_2),.wb(wb43),.wa(wA33_2));
GD G33_3(.inG(g33),.ls(e43),.gd(gd33_3));
weight w33_3(.gd(gd33_3),.wb(wc43),.wa(wA33_3));
GD G33_4(.inG(g34),.ls(e43),.gd(gd33_4));
weight w33_4(.gd(gd33_4),.wb(wd43),.wa(wA33_4));

GD G34_1(.inG(g31),.ls(e44),.gd(gd34_1));
weight w34_1(.gd(gd34_1),.wb(wa44),.wa(wA34_1));
GD G34_2(.inG(g32),.ls(e44),.gd(gd34_2));
weight w34_2(.gd(gd34_2),.wb(wb44),.wa(wA34_2));
GD G34_3(.inG(g33),.ls(e44),.gd(gd34_3));
weight w34_3(.gd(gd34_3),.wb(wc44),.wa(wA34_3));
GD G34_4(.inG(g34),.ls(e44),.gd(gd34_4));
weight w34_4(.gd(gd34_4),.wb(wd44),.wa(wA34_4));
wire signed[18:0] e31,e32,e33,e34;
wire signed[18:0]totalWa31,totalWa32,totalWa33,totalWa34;
assign totalWa31 = wA31_1+wA31_2+wA31_3+wA31_4;
assign totalWa32 = wA32_1+wA32_2+wA32_3+wA32_4;
assign totalWa33 = wA33_1+wA33_2+wA33_3+wA33_4;
assign totalWa34 = wA34_1+wA34_2+wA34_3+wA34_4;


assign e31 = ((e41 * wA31_1) / totalWa31)+((e42 * wA32_1) / totalWa32)+((e43 * wA33_1) / totalWa33)+((e44 * wA34_1) / totalWa34);    
assign e32 = ((e41 * wA31_2) / totalWa31)+((e42 * wA32_2) / totalWa32)+((e43 * wA33_2) / totalWa33)+((e44 * wA34_2) / totalWa34); 
assign e33 = ((e41 * wA31_3) / totalWa31)+((e42 * wA32_3) / totalWa32)+((e43 * wA33_3) / totalWa33)+((e44 * wA34_3) / totalWa34);
assign e34 = ((e41 * wA31_4) / totalWa31)+((e42 * wA32_4) / totalWa32)+((e43 * wA33_4) / totalWa33)+((e44 * wA34_4) / totalWa34);

GD G21_1(.inG(g21),.ls(e31),.gd(gd21_1));      //3 -> 2
weight w21_1(.gd(gd21_1),.wb(wa31),.wa(wA21_1));
GD G21_2(.inG(g22),.ls(e31),.gd(gd21_2));
weight w21_2(.gd(gd21_2),.wb(wb31),.wa(wA21_2));
GD G21_3(.inG(g23),.ls(e31),.gd(gd21_3));
weight w21_3(.gd(gd21_3),.wb(wc31),.wa(wA21_3));
GD G21_4(.inG(g24),.ls(e31),.gd(gd21_4));
weight w21_4(.gd(gd21_4),.wb(wd31),.wa(wA21_4));

GD G22_1(.inG(g21),.ls(e32),.gd(gd22_1));
weight w22_1(.gd(gd22_1),.wb(wa32),.wa(wA22_1));
GD G22_2(.inG(g22),.ls(e32),.gd(gd22_2));
weight w22_2(.gd(gd22_2),.wb(wb32),.wa(wA22_2));
GD G22_3(.inG(g23),.ls(e32),.gd(gd22_3));
weight w22_3(.gd(gd22_3),.wb(wc32),.wa(wA22_3));
GD G22_4(.inG(g24),.ls(e32),.gd(gd22_4));
weight w22_4(.gd(gd22_4),.wb(wd32),.wa(wA22_4));
//
GD G23_1(.inG(g21),.ls(e33),.gd(gd23_1));
weight w23_1(.gd(gd23_1),.wb(wa33),.wa(wA23_1));
GD G23_2(.inG(g22),.ls(e33),.gd(gd23_2));
weight w23_2(.gd(gd23_2),.wb(wb33),.wa(wA23_2));
GD G23_3(.inG(g23),.ls(e33),.gd(gd23_3));
weight w23_3(.gd(gd23_3),.wb(wc33),.wa(wA23_3));
GD G23_4(.inG(g24),.ls(e33),.gd(gd23_4));
weight w23_4(.gd(gd23_4),.wb(wd33),.wa(wA23_4));

GD G24_1(.inG(g21),.ls(e34),.gd(gd24_1));
weight w24_1(.gd(gd24_1),.wb(wa34),.wa(wA24_1));
GD G24_2(.inG(g22),.ls(e34),.gd(gd24_2));
weight w24_2(.gd(gd24_2),.wb(wb34),.wa(wA24_2));
GD G24_3(.inG(g23),.ls(e34),.gd(gd24_3));
weight w24_3(.gd(gd24_3),.wb(wc34),.wa(wA24_3));
GD G24_4(.inG(g24),.ls(e34),.gd(gd24_4));
weight w24_4(.gd(gd24_4),.wb(wd34),.wa(wA24_4));

wire signed[18:0] e21,e22,e23,e24;
wire signed[18:0]totalWa21,totalWa22,totalWa23,totalWa24;
assign totalWa21 = wA21_1+wA21_2+wA21_3+wA21_4;
assign totalWa22 = wA22_1+wA22_2+wA22_3+wA22_4;
assign totalWa23 = wA23_1+wA23_2+wA23_3+wA23_4;
assign totalWa24 = wA24_1+wA24_2+wA24_3+wA24_4;


assign e21 = ((e31 * wA21_1) / totalWa21)+((e32 * wA22_1) / totalWa22)+((e33 * wA23_1) / totalWa23)+((e34 * wA24_1) / totalWa24);    
assign e22 = ((e31 * wA21_2) / totalWa21)+((e32 * wA22_2) / totalWa22)+((e33 * wA23_2) / totalWa23)+((e34 * wA24_2) / totalWa24); 
assign e23 = ((e31 * wA21_3) / totalWa21)+((e32 * wA22_3) / totalWa22)+((e33 * wA23_3) / totalWa23)+((e34 * wA24_3) / totalWa24);
assign e24 = ((e31 * wA21_4) / totalWa21)+((e32 * wA22_4) / totalWa22)+((e33 * wA23_4) / totalWa23)+((e34 * wA24_4) / totalWa24);

GD G11_1(.inG(g11),.ls(e21),.gd(gd11_1));      //2 -> 1
weight w11_1(.gd(gd11_1),.wb(wa21),.wa(wA11_1));
GD G11_2(.inG(g12),.ls(e21),.gd(gd11_2));
weight w11_2(.gd(gd11_2),.wb(wb21),.wa(wA11_2));
GD G11_3(.inG(g13),.ls(e21),.gd(gd11_3));
weight w11_3(.gd(gd11_3),.wb(wc21),.wa(wA11_3));
GD G11_4(.inG(g14),.ls(e21),.gd(gd11_4));
weight w11_4(.gd(gd11_4),.wb(wd21),.wa(wA11_4));

GD G12_1(.inG(g11),.ls(e22),.gd(gd12_1));
weight w12_1(.gd(gd12_1),.wb(wa22),.wa(wA12_1));
GD G12_2(.inG(g12),.ls(e22),.gd(gd12_2));
weight w12_2(.gd(gd12_2),.wb(wb22),.wa(wA12_2));
GD G12_3(.inG(g13),.ls(e22),.gd(gd12_3));
weight w12_3(.gd(gd12_3),.wb(wc22),.wa(wA12_3));
GD G12_4(.inG(g14),.ls(e22),.gd(gd12_4));
weight w12_4(.gd(gd12_4),.wb(wd22),.wa(wA12_4));
//
GD G13_1(.inG(g11),.ls(e23),.gd(gd13_1));
weight w13_1(.gd(gd13_1),.wb(wa23),.wa(wA13_1));
GD G13_2(.inG(g12),.ls(e23),.gd(gd13_2));
weight w13_2(.gd(gd13_2),.wb(wb23),.wa(wA13_2));
GD G13_3(.inG(g13),.ls(e23),.gd(gd13_3));
weight w13_3(.gd(gd13_3),.wb(wc23),.wa(wA13_3));
GD G13_4(.inG(g14),.ls(e23),.gd(gd13_4));
weight w13_4(.gd(gd13_4),.wb(wd23),.wa(wA13_4));

GD G14_1(.inG(g11),.ls(e24),.gd(gd14_1));
weight w14_1(.gd(gd14_1),.wb(wa24),.wa(wA14_1));
GD G14_2(.inG(g12),.ls(e24),.gd(gd14_2));
weight w14_2(.gd(gd14_2),.wb(wb24),.wa(wA14_2));
GD G14_3(.inG(g13),.ls(e24),.gd(gd14_3));
weight w14_3(.gd(gd14_3),.wb(wc24),.wa(wA14_3));
GD G14_4(.inG(g14),.ls(e24),.gd(gd14_4));
weight w14_4(.gd(gd14_4),.wb(wd24),.wa(wA14_4));

wire signed[18:0] e11,e12,e13,e14;
wire signed[18:0]totalWa11,totalWa12,totalWa13,totalWa14;
assign totalWa11 = wA11_1+wA11_2+wA11_3+wA11_4;
assign totalWa12 = wA12_1+wA12_2+wA12_3+wA12_4;
assign totalWa13 = wA13_1+wA13_2+wA13_3+wA13_4;
assign totalWa14 = wA14_1+wA14_2+wA14_3+wA14_4;

assign e11 = ((e21 * wA11_1) / totalWa11)+((e22 * wA12_1) / totalWa12)+((e23 * wA13_1) / totalWa13)+((e24 * wA14_1) / totalWa14);    
assign e12 = ((e21 * wA11_2) / totalWa11)+((e22 * wA12_2) / totalWa12)+((e23 * wA13_2) / totalWa13)+((e24 * wA14_2) / totalWa14); 
assign e13 = ((e21 * wA11_3) / totalWa11)+((e22 * wA12_3) / totalWa12)+((e23 * wA13_3) / totalWa13)+((e24 * wA14_3) / totalWa14);
assign e14 = ((e21 * wA11_4) / totalWa11)+((e22 * wA12_4) / totalWa12)+((e23 * wA13_4) / totalWa13)+((e24 * wA14_4) / totalWa14);

GD G01_1(.inG(a),.ls(e11),.gd(gd01_1));      //1 -> input
weight w01_1(.gd(gd01_1),.wb(wa11),.wa(wA01_1));
GD G01_2(.inG(b),.ls(e11),.gd(gd01_2));
weight w01_2(.gd(gd01_2),.wb(wb11),.wa(wA01_2));
GD G01_3(.inG(c),.ls(e11),.gd(gd01_3));
weight w01_3(.gd(gd01_3),.wb(wc11),.wa(wA01_3));
GD G01_4(.inG(d),.ls(e11),.gd(gd01_4));
weight w01_4(.gd(gd01_4),.wb(wd11),.wa(wA01_4));

GD G02_1(.inG(a),.ls(e12),.gd(gd02_1));
weight w02_1(.gd(gd02_1),.wb(wa12),.wa(wA02_1));
GD G02_2(.inG(b),.ls(e12),.gd(gd02_2));
weight w02_2(.gd(gd02_2),.wb(wb12),.wa(wA02_2));
GD G02_3(.inG(c),.ls(e12),.gd(gd02_3));
weight w02_3(.gd(gd02_3),.wb(wc12),.wa(wA02_3));
GD G02_4(.inG(d),.ls(e12),.gd(gd02_4));
weight w02_4(.gd(gd02_4),.wb(wd12),.wa(wA02_4));
//
GD G03_1(.inG(a),.ls(e13),.gd(gd03_1));
weight w03_1(.gd(gd03_1),.wb(wa13),.wa(wA03_1));
GD G03_2(.inG(b),.ls(e13),.gd(gd03_2));
weight w03_2(.gd(gd03_2),.wb(wb13),.wa(wA03_2));
GD G03_3(.inG(c),.ls(e13),.gd(gd03_3));
weight w03_3(.gd(gd03_3),.wb(wc13),.wa(wA03_3));
GD G03_4(.inG(d),.ls(e13),.gd(gd03_4));
weight w03_4(.gd(gd03_4),.wb(wd13),.wa(wA03_4));

GD G04_1(.inG(a),.ls(e14),.gd(gd04_1));
weight w04_1(.gd(gd04_1),.wb(wa14),.wa(wA04_1));
GD G04_2(.inG(b),.ls(e14),.gd(gd04_2));
weight w04_2(.gd(gd04_2),.wb(wb14),.wa(wA04_2));
GD G04_3(.inG(c),.ls(e14),.gd(gd04_3));
weight w04_3(.gd(gd04_3),.wb(wc14),.wa(wA04_3));
GD G04_4(.inG(d),.ls(e14),.gd(gd04_4));
weight w04_4(.gd(gd04_4),.wb(wd14),.wa(wA04_4));

wire signed[18:0] g111,g122,g133,g144,g211,g222,g233,g244,g311,g322,g333,g344,g411,g422,g433,g444,fg1;
grade grade218(.a(a),.b(b),.c(c),.d(d),.wa1(wA01_1),.wb1(wA01_2),.wc1(wA01_3),.wd1(wA01_4),.wa2(wA02_1),.wb2(wA02_2),.wc2(wA02_3),.wd2(wA02_4),.wa3(wA03_1),.wb3(wA03_2),.wc3(wA03_3),.wd3(wA03_4),.wa4(wA04_1),.wb4(wA04_2),.wc4(wA04_3),.wd4(wA04_4),.g1(g111),.g2(g122),.g3(g133),.g4(g144),.clk(clk)); 
grade grade22(.a(g111),.b(g122),.c(g133),.d(g144),.wa1(wA11_1),.wb1(wA11_2),.wc1(wA11_3),.wd1(wA11_4),.wa2(wA12_1),.wb2(wA12_2),.wc2(wA12_3),.wd2(wA12_4),.wa3(wA13_1),.wb3(wA13_2),.wc3(wA13_3),.wd3(wA13_4),.wa4(wA14_1),.wb4(wA14_2),.wc4(wA14_3),.wd4(wA14_4),.g1(g211),.g2(g222),.g3(g233),.g4(g244),.clk(clk));
grade grade23(.a(g211),.b(g222),.c(g233),.d(g244),.wa1(wA21_1),.wb1(wA21_2),.wc1(wA21_3),.wd1(wA21_4),.wa2(wA22_1),.wb2(wA22_2),.wc2(wA22_3),.wd2(wA22_4),.wa3(wA23_1),.wb3(wA23_2),.wc3(wA23_3),.wd3(wA23_4),.wa4(wA24_1),.wb4(wA24_2),.wc4(wA24_3),.wd4(wA24_4),.g1(g311),.g2(g322),.g3(g333),.g4(g344),.clk(clk));
grade grade24(.a(g311),.b(g322),.c(g333),.d(g344),.wa1(wA31_1),.wb1(wA31_2),.wc1(wA31_3),.wd1(wA31_4),.wa2(wA32_1),.wb2(wA32_2),.wc2(wA32_3),.wd2(wA32_4),.wa3(wA33_1),.wb3(wA33_2),.wc3(wA33_3),.wd3(wA33_4),.wa4(wA34_1),.wb4(wA34_2),.wc4(wA34_3),.wd4(wA34_4),.g1(g411),.g2(g422),.g3(g433),.g4(g444),.clk(clk));
FG fgf1(.a(g411),.b(g422),.c(g433),.d(g444),.wa1(wA41),.wb1(wA42),.wc1(wA43),.wd1(wA44),.fg(fg1),.clk(clk));
sseg_top s1(.i(fg),.clk1(clk),.reset1(reset),.seg1(seg),.an1(an));

initial begin //17666 79903
#900



$display("fg=%d",fg);
$display("fg1=%d",fg1);


end
endmodule
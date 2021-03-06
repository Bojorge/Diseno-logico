/* Generated by Yosys 0.15+40 (git sha1 0c5279b73, x86_64-conda_cos6-linux-gnu-gcc 1.24.0.133_b0863d8_dirty -fvisibility-inlines-hidden -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -fdebug-prefix-map=/home/runner/work/conda-eda/conda-eda/workdir/conda-env/conda-bld/yosys_1647534715613/work=/usr/local/src/conda/yosys-0.15_43_g0c5279b73 -fdebug-prefix-map=/home/ivan_campbell/miniconda3/envs/ambiente_verilog=/usr/local/src/conda-prefix -fPIC -Os -fno-merge-constants) */

(* src = "FA_exacto.v:1.1-7.10" *)
module FA_exacto(A, B, Cin, S, Cout);
  wire _0_;
  wire _1_;
  wire _2_;
  (* src = "FA_exacto.v:2.11-2.12" *)
  input A;
  wire A;
  (* src = "FA_exacto.v:2.14-2.15" *)
  input B;
  wire B;
  (* src = "FA_exacto.v:2.17-2.20" *)
  input Cin;
  wire Cin;
  (* src = "FA_exacto.v:3.15-3.19" *)
  output Cout;
  wire Cout;
  (* src = "FA_exacto.v:3.12-3.13" *)
  output S;
  wire S;
  NAND2_X1 _3_ (
    .A1(B),
    .A2(Cin),
    .ZN(_0_)
  );
  XNOR2_X1 _4_ (
    .A1(B),
    .A2(Cin),
    .ZN(_1_)
  );
  OAI21_X1 _5_ (
    .A1(B),
    .A2(Cin),
    .B(A),
    .ZN(_2_)
  );
  NAND2_X1 _6_ (
    .A1(_0_),
    .A2(_2_),
    .ZN(Cout)
  );
  XNOR2_X1 _7_ (
    .A1(A),
    .A2(_1_),
    .ZN(S)
  );
endmodule

(* src = "RCA_exacto8b.v:1.1-22.10" *)
module RCA_exacto8b(A, B, S);
  (* src = "RCA_exacto8b.v:2.17-2.18" *)
  input [7:0] A;
  wire [7:0] A;
  (* src = "RCA_exacto8b.v:3.17-3.18" *)
  input [7:0] B;
  wire [7:0] B;
  (* src = "RCA_exacto8b.v:9.11-9.15" *)
  wire [7:0] Cout;
  (* src = "RCA_exacto8b.v:5.18-5.19" *)
  output [8:0] S;
  wire [8:0] S;
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto8b.v:11.11-11.48" *)
  FA_exacto fa0 (
    .A(A[0]),
    .B(B[0]),
    .Cin(1'h0),
    .Cout(Cout[0]),
    .S(S[0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto8b.v:12.11-12.51" *)
  FA_exacto fa1 (
    .A(A[1]),
    .B(B[1]),
    .Cin(Cout[0]),
    .Cout(Cout[1]),
    .S(S[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto8b.v:13.11-13.51" *)
  FA_exacto fa2 (
    .A(A[2]),
    .B(B[2]),
    .Cin(Cout[1]),
    .Cout(Cout[2]),
    .S(S[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto8b.v:14.11-14.51" *)
  FA_exacto fa3 (
    .A(A[3]),
    .B(B[3]),
    .Cin(Cout[2]),
    .Cout(Cout[3]),
    .S(S[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto8b.v:15.11-15.51" *)
  FA_exacto fa4 (
    .A(A[4]),
    .B(B[4]),
    .Cin(Cout[3]),
    .Cout(Cout[4]),
    .S(S[4])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto8b.v:16.11-16.51" *)
  FA_exacto fa5 (
    .A(A[5]),
    .B(B[5]),
    .Cin(Cout[4]),
    .Cout(Cout[5]),
    .S(S[5])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto8b.v:17.11-17.51" *)
  FA_exacto fa6 (
    .A(A[6]),
    .B(B[6]),
    .Cin(Cout[5]),
    .Cout(Cout[6]),
    .S(S[6])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto8b.v:18.11-18.51" *)
  FA_exacto fa7 (
    .A(A[7]),
    .B(B[7]),
    .Cin(Cout[6]),
    .Cout(S[8]),
    .S(S[7])
  );
  assign Cout[7] = S[8];
endmodule

(* src = "RCA_exacto9b.v:1.1-23.10" *)
module RCA_exacto9b(A, B, S);
  (* src = "RCA_exacto9b.v:2.17-2.18" *)
  input [8:0] A;
  wire [8:0] A;
  (* src = "RCA_exacto9b.v:3.17-3.18" *)
  input [8:0] B;
  wire [8:0] B;
  (* src = "RCA_exacto9b.v:9.11-9.15" *)
  wire [8:0] Cout;
  (* src = "RCA_exacto9b.v:5.18-5.19" *)
  output [9:0] S;
  wire [9:0] S;
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto9b.v:11.11-11.48" *)
  FA_exacto fa0 (
    .A(A[0]),
    .B(B[0]),
    .Cin(1'h0),
    .Cout(Cout[0]),
    .S(S[0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto9b.v:12.11-12.51" *)
  FA_exacto fa1 (
    .A(A[1]),
    .B(B[1]),
    .Cin(Cout[0]),
    .Cout(Cout[1]),
    .S(S[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto9b.v:13.11-13.51" *)
  FA_exacto fa2 (
    .A(A[2]),
    .B(B[2]),
    .Cin(Cout[1]),
    .Cout(Cout[2]),
    .S(S[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto9b.v:14.11-14.51" *)
  FA_exacto fa3 (
    .A(A[3]),
    .B(B[3]),
    .Cin(Cout[2]),
    .Cout(Cout[3]),
    .S(S[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto9b.v:15.11-15.51" *)
  FA_exacto fa4 (
    .A(A[4]),
    .B(B[4]),
    .Cin(Cout[3]),
    .Cout(Cout[4]),
    .S(S[4])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto9b.v:16.11-16.51" *)
  FA_exacto fa5 (
    .A(A[5]),
    .B(B[5]),
    .Cin(Cout[4]),
    .Cout(Cout[5]),
    .S(S[5])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto9b.v:17.11-17.51" *)
  FA_exacto fa6 (
    .A(A[6]),
    .B(B[6]),
    .Cin(Cout[5]),
    .Cout(Cout[6]),
    .S(S[6])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto9b.v:18.11-18.51" *)
  FA_exacto fa7 (
    .A(A[7]),
    .B(B[7]),
    .Cin(Cout[6]),
    .Cout(Cout[7]),
    .S(S[7])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "RCA_exacto9b.v:19.11-19.51" *)
  FA_exacto fa8 (
    .A(A[8]),
    .B(B[8]),
    .Cin(Cout[7]),
    .Cout(S[9]),
    .S(S[8])
  );
  assign Cout[8] = S[9];
endmodule

(* top =  1  *)
(* src = "laplace_exacto.v:1.1-26.10" *)
module laplace_exacto(b, d, e, f, h, s);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  wire _39_;
  wire _40_;
  wire _41_;
  wire _42_;
  wire _43_;
  wire _44_;
  wire _45_;
  (* src = "laplace_exacto.v:2.14-2.15" *)
  input [7:0] b;
  wire [7:0] b;
  (* src = "laplace_exacto.v:3.14-3.15" *)
  input [7:0] d;
  wire [7:0] d;
  (* src = "laplace_exacto.v:4.14-4.15" *)
  input [7:0] e;
  wire [7:0] e;
  (* src = "laplace_exacto.v:5.14-5.15" *)
  input [7:0] f;
  wire [7:0] f;
  (* src = "laplace_exacto.v:6.14-6.15" *)
  input [7:0] h;
  wire [7:0] h;
  (* src = "laplace_exacto.v:8.15-8.16" *)
  output [8:0] s;
  wire [8:0] s;
  (* src = "laplace_exacto.v:11.15-11.20" *)
  wire [8:0] suma1;
  (* src = "laplace_exacto.v:12.15-12.20" *)
  wire [8:0] suma2;
  (* src = "laplace_exacto.v:13.15-13.20" *)
  wire [9:0] suma3;
  INV_X1 _46_ (
    .I(suma3[8]),
    .ZN(_00_)
  );
  INV_X1 _47_ (
    .I(e[5]),
    .ZN(_01_)
  );
  INV_X1 _48_ (
    .I(e[4]),
    .ZN(_02_)
  );
  INV_X1 _49_ (
    .I(suma3[5]),
    .ZN(_03_)
  );
  INV_X1 _50_ (
    .I(e[2]),
    .ZN(_04_)
  );
  INV_X1 _51_ (
    .I(e[1]),
    .ZN(_05_)
  );
  INV_X1 _52_ (
    .I(e[0]),
    .ZN(_06_)
  );
  INV_X1 _53_ (
    .I(suma3[0]),
    .ZN(_07_)
  );
  INV_X1 _54_ (
    .I(suma3[1]),
    .ZN(_08_)
  );
  NAND2_X1 _55_ (
    .A1(_00_),
    .A2(e[6]),
    .ZN(_09_)
  );
  NAND2_X1 _56_ (
    .A1(_01_),
    .A2(suma3[7]),
    .ZN(_10_)
  );
  NAND2_X1 _57_ (
    .A1(_02_),
    .A2(suma3[6]),
    .ZN(_11_)
  );
  INV_X1 _58_ (
    .I(_11_),
    .ZN(_12_)
  );
  XOR2_X1 _59_ (
    .A1(e[4]),
    .A2(suma3[6]),
    .Z(_13_)
  );
  NOR2_X1 _60_ (
    .A1(e[3]),
    .A2(_03_),
    .ZN(_14_)
  );
  INV_X1 _61_ (
    .I(_14_),
    .ZN(_15_)
  );
  NAND2_X1 _62_ (
    .A1(_04_),
    .A2(suma3[4]),
    .ZN(_16_)
  );
  INV_X1 _63_ (
    .I(_16_),
    .ZN(_17_)
  );
  XOR2_X1 _64_ (
    .A1(e[2]),
    .A2(suma3[4]),
    .Z(_18_)
  );
  NAND2_X1 _65_ (
    .A1(_05_),
    .A2(suma3[3]),
    .ZN(_19_)
  );
  XNOR2_X1 _66_ (
    .A1(e[1]),
    .A2(suma3[3]),
    .ZN(_20_)
  );
  OAI21_X1 _67_ (
    .A1(_06_),
    .A2(suma3[2]),
    .B(_20_),
    .ZN(_21_)
  );
  AOI21_X1 _68_ (
    .A1(_19_),
    .A2(_21_),
    .B(_18_),
    .ZN(_22_)
  );
  NOR2_X1 _69_ (
    .A1(_17_),
    .A2(_22_),
    .ZN(_23_)
  );
  XNOR2_X1 _70_ (
    .A1(e[3]),
    .A2(suma3[5]),
    .ZN(_24_)
  );
  INV_X1 _71_ (
    .I(_24_),
    .ZN(_25_)
  );
  NOR2_X1 _72_ (
    .A1(_23_),
    .A2(_25_),
    .ZN(_26_)
  );
  OAI21_X1 _73_ (
    .A1(_17_),
    .A2(_22_),
    .B(_24_),
    .ZN(_27_)
  );
  AOI21_X1 _74_ (
    .A1(_15_),
    .A2(_27_),
    .B(_13_),
    .ZN(_28_)
  );
  OR2_X1 _75_ (
    .A1(_12_),
    .A2(_28_),
    .Z(_29_)
  );
  XNOR2_X1 _76_ (
    .A1(e[5]),
    .A2(suma3[7]),
    .ZN(_30_)
  );
  OAI21_X1 _77_ (
    .A1(_12_),
    .A2(_28_),
    .B(_30_),
    .ZN(_31_)
  );
  XNOR2_X1 _78_ (
    .A1(suma3[9]),
    .A2(e[7]),
    .ZN(_32_)
  );
  NAND3_X1 _79_ (
    .A1(_10_),
    .A2(_31_),
    .A3(_32_),
    .ZN(_33_)
  );
  OR2_X1 _80_ (
    .A1(_00_),
    .A2(e[6]),
    .Z(_34_)
  );
  NAND2_X1 _81_ (
    .A1(_32_),
    .A2(_34_),
    .ZN(_35_)
  );
  NAND3_X1 _82_ (
    .A1(_10_),
    .A2(_31_),
    .A3(_35_),
    .ZN(_36_)
  );
  AND4_X1 _83_ (
    .A1(_09_),
    .A2(_32_),
    .A3(_33_),
    .A4(_34_),
    .Z(_37_)
  );
  AOI21_X1 _84_ (
    .A1(_09_),
    .A2(_33_),
    .B(_36_),
    .ZN(_38_)
  );
  OAI21_X1 _85_ (
    .A1(_37_),
    .A2(_38_),
    .B(_07_),
    .ZN(s[0])
  );
  OAI21_X1 _86_ (
    .A1(_37_),
    .A2(_38_),
    .B(_08_),
    .ZN(s[1])
  );
  XNOR2_X1 _87_ (
    .A1(e[0]),
    .A2(suma3[2]),
    .ZN(_39_)
  );
  OAI21_X1 _88_ (
    .A1(_37_),
    .A2(_38_),
    .B(_39_),
    .ZN(s[2])
  );
  OR3_X1 _89_ (
    .A1(_06_),
    .A2(suma3[2]),
    .A3(_20_),
    .Z(_40_)
  );
  NAND2_X1 _90_ (
    .A1(_21_),
    .A2(_40_),
    .ZN(_41_)
  );
  OAI21_X1 _91_ (
    .A1(_37_),
    .A2(_38_),
    .B(_41_),
    .ZN(s[3])
  );
  AND3_X1 _92_ (
    .A1(_18_),
    .A2(_19_),
    .A3(_21_),
    .Z(_42_)
  );
  OAI22_X1 _93_ (
    .A1(_37_),
    .A2(_38_),
    .B1(_42_),
    .B2(_22_),
    .ZN(s[4])
  );
  NOR3_X1 _94_ (
    .A1(_17_),
    .A2(_22_),
    .A3(_24_),
    .ZN(_43_)
  );
  OAI22_X1 _95_ (
    .A1(_37_),
    .A2(_38_),
    .B1(_43_),
    .B2(_26_),
    .ZN(s[5])
  );
  AND3_X1 _96_ (
    .A1(_13_),
    .A2(_15_),
    .A3(_27_),
    .Z(_44_)
  );
  OAI22_X1 _97_ (
    .A1(_37_),
    .A2(_38_),
    .B1(_44_),
    .B2(_28_),
    .ZN(s[6])
  );
  XNOR2_X1 _98_ (
    .A1(_29_),
    .A2(_30_),
    .ZN(_45_)
  );
  OAI21_X1 _99_ (
    .A1(_37_),
    .A2(_38_),
    .B(_45_),
    .ZN(s[7])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "laplace_exacto.v:18.18-18.36" *)
  RCA_exacto8b rca0 (
    .A(b),
    .B(d),
    .S(suma1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "laplace_exacto.v:19.18-19.36" *)
  RCA_exacto8b rca1 (
    .A(f),
    .B(h),
    .S(suma2)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "laplace_exacto.v:20.15-20.41" *)
  RCA_exacto9b rca2 (
    .A(suma1),
    .B(suma2),
    .S(suma3)
  );
  assign s[8] = 1'h0;
endmodule

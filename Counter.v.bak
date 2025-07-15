module jk(q,qbar,j,k,clr,clk);
 output q,qbar;
 input j,k,clr,clk;
 nand(a,qbar,j,clr,clk);
 nand(b,k,q,clk);
 not(clkbar,clk);
 nand(y,a,ybar);
 nand(ybar,clr,b,y);
 nand(c,y,clkbar);
 nand(d,clkbar,ybar);
 nand(q,qbar,c);
 nand(qbar,d,clr,q);
endmodule
module counter(q,clr,clk,j,k);
 input j,k,clr,clk;
 output [3:0]q;
 wire [3:0]qb;
  wire clr1;
 nand(p,q[1],q[3]);
 and(clr1,p,clr);
 jk j1(q[0],qb[0],j,k,clr1,clk);
 jk j2(q[1],qb[1],j,k,clr1,q[0]);
 jk j3(q[2],qb[2],j,k,clr1,q[1]);
 jk j4(q[3],qb[3],j,k,clr1,q[2]);
endmodule
module ripsim;
  reg j,k,clr,clk;
  wire [3:0]q;
counter c1(q,clr,clk,j,k);
 initial
 clk=1'b0;
 always 
 #5 clk=~clk;
 initial
 begin
 j=1'b1;k=1'b1;clr=1'b0;
 #5 clr=1'b1;
 end
always@(negedge clk)
begin
if(q==4'b1010)
begin
  clr=1'b0;
  #2 clr=1'b1;
end
end
endmodule


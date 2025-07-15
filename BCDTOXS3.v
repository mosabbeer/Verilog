module bcdtoxs3(w,x,y,z,a,b,c,d);
  input a,b,c,d;
  output w,x,y,z;
  and(p,b,d);
  and(q,b,c);
  or(w,a,p,q);
  not(bbar,b);
  not(cbar,c);
  not(z,d);
  and(r,bbar,d);
  and(s,c,bbar);
  and(t,b,cbar,z);
  or(x,r,s,t);
  xnor(y,c,d);
endmodule
module bcdtoxs3tester;
 reg a,b,c,d;
  wire w,x,y,z;
  bcdtoxs3 bx3(w,x,y,z,a,b,c,d);
   initial
     begin
      a=1'b1;b=1'b0;c=1'b0;d=1'b0;
      #10 a=1'b0;b=1'b1;c=1'b0;d=1'b0;
      #10 a=1'b0;b=1'b0;c=1'b1;d=1'b0;
      #10 a=1'b0;b=1'b0;c=1'b0;d=1'b0;
     end
endmodule


\p 0W

\c 25 250

spoke:`pid xkey{update`$"."sv'string"i"$0x0 vs'IP," "sv'X,EXP:("D"$.z.l 1)-.z.D,handle:0i,up:.z.N,dir:system"\\pwd"from`port`slaves`pid`IP xcol enlist(`p`s,`$'x)!(system@'"ps"),get each".z.",/:x}"iahuXPKk"

`memst set`pid xkey update pid:.z.i from enlist .Q.w[];

`down set delete from update crash:.z.P from lj[spoke;memst];

{if[x in key`:.;x upsert get hsym x]}each`spoke`memst`down;

.z.vs:{[x;y]if[x in`spoke`memst`down;save x]}

if[count spoke;update P:.z.P,handle:@[hopen;;0Ni]each"j"$port from`spoke;delete from`spoke where null handle];

.z.pc:{`down upsert update crash:.z.P from lj[select from spoke where handle=x;memst];delete from`spoke where handle=x}
 
.z.ts:{update up:"n"$.z.P-P from`spoke;`memst set{x[`handle]@".Q.w[]"}each spoke}

\t 10000

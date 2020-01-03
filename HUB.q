\p 0W

0@(upsert;`spoke;{`port`slaves`pid xcol enlist(`p`s,`$'x)!("ii"$system@'"ps"),get each".z.",/:x}"ifhpuKk");

update handle:0,up:.z.n from delete from`pid xkey`spoke;

if[`spoke in key`:.;`spoke set get`:spoke]

if[count spoke;update handle:@[hopen;;0N]each port from`spoke]

delete from`spoke where null handle;

neg[exec handle from spoke]@\:"\\l ",getenv[`HOME],"/HUB/spoke.q";

.z.pc:{p:exec port from spoke where handle=x;
 delete from`loc where port in p;
 delete from`fns where port in p;
 delete from`mem where port in p; 
 delete from`tbl where port in p;
 delete from`spoke where handle=x;}

.z.vs:{[x;y]if[x=`spoke;save`spoke]}

.z.ts:{update up:"n"$.z.p-p from`spoke;}

\c 25 150

\t 10000

\
neg[4]@({neg[.z.w]@(z;get[x]@y)};`add;1 2;{r::x})

\p 0W

if[(`$"HUB down!")~HUB:@[system;"ps -eo pid,command|grep HUB.q|egrep -v 'rlwrap|grep'";`$"HUB down!"];0N!HUB;exit -1]

HUB:neg hopen"J"$first" "vs last":"vs first system"lsof -iTCP -sTCP:LISTEN -Pn|grep ",first" "vs ltrim first HUB

HUB@(upsert;`spoke;{`port`slaves`pid xcol enlist(`p`s,`$'x)!("ji"$system@'"ps"),get each".z.",/:x}"ifhpuKk")

HUB@"update handle:.z.w from`spoke where pid=",string .z.i

HUB@(upsert;`loc;flip`port`file`dir!system["p"],(.z.f;system"pwd"))

HUB@(upsert;`fns;flip`port`fns!flip system["p"],/:system"f")

HUB@(upsert;`mem;`port xcols update port:system"p"from enlist .Q.w[])

HUB@(upsert;`tbl;raze{update tbl:y,port:x from 0!meta y}[system"p"]each tables[],views`)

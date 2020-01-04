# HUB
HUB/spoke manager for dynamic ports in q

The magic. Setting a port to infinity sets it to a non blocked free port.
To take advantage of this we will have a registrar called HUB.
This is started in the HUB directory which in this case is in the home directory.
Wherever the HUB directory ends up residing replace the environment variable in this line in q.q.

system"l ",getenv[`HOME],"/HUB/spoke.q"

q.q lives in QHOME and is loaded with every invocation of q after q.k is loaded.
However spoke.q checks that HUB.q has been instaniated and is currently running.

ebb$ q3.7

`HUB down!
 
ebb$ pwd

/Users/ebb/HUB

ebb$ q3.7 HUB.q

Ideally these sessions will be run in screen or kmon.
At this point the spoke table in the HUB instance will have one record.

q)flip 0!spoke

pid   | 88912                        
port  | 63947                        
slaves| 0                            
IP    | 192.168.1.252                
h     | ebbs-mbp.fios-router.home    
u     | ebb                          
X     | "/Users/ebb/q/m64/q HUB.q"   
P     | 2020.01.04D13:12:13.689473000
K     | 3.7                          
k     | 2019.12.12                   
EXP   | 355                          
handle| 0                            
up    | 0D00:03:10.003498000         
dir   | "/Users/ebb/HUB"       

Now we can bring up as many q instances as we like.
They will all be assigned a random non blocked port that will be registered with HUB.

ebb$ pwd

/Users/ebb/rxds/imdb

ebb$ q3.7 qa

ebb$ q3.7 dev -s 8

/ app instance

ebb$ pwd

/Users/ebb

ebb$ q3.7

/ in HUB

q)select pid,port,X,up,dir from spoke

pid   port  X                             up                   dir                       
-----------------------------------------------------------------------------------------
88912 63947 "/Users/ebb/q/m64/q HUB.q"    0D00:10:10.020979000 "/Users/ebb/HUB"          
89117 63976 "/Users/ebb/q/m64/q qa"       0D00:02:14.501745000 "/Users/ebb/rxds/imdb/qa" 
89148 63980 "/Users/ebb/q/m64/q dev -s 8" 0D00:01:38.628481000 "/Users/ebb/rxds/imdb/dev"
89173 63984 "/Users/ebb/q/m64/q"          0D00:01:14.164423000 "/Users/ebb"     


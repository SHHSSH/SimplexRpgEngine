/// inventoryAdd(item, number)

var it, nu;
it = -1;
nu = 1;

if (argument_count > 0) {it = argument[0];}
if (argument_count > 1) {nu = argument[1];}


repeat(nu)
    {
     var i = instance_create(x, y, it);
     with (i) {if (inventoryPickUp()) {event_user(0); global.temp = true;} else {global.temp = false;}}
    }

return (global.temp);

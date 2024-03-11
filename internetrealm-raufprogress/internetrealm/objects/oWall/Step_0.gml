/// Wall stuff
if place_meeting(x, y, oPlayer) {
    var dx = x - oPlayer.x;
    var dy = y - oPlayer.y;
    var distance = point_distance(x, y, oPlayer.x, oPlayer.y);
    
    if (distance > 0) {
        var moveX = dx / distance;
        var moveY = dy / distance;
        
        oPlayer.x -= moveX;
        oPlayer.y -= moveY;
    }
}
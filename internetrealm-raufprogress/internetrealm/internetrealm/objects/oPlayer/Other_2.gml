if file_exists("Save.sav") {
    ini_open("Save.sav");
    var loadedRoom = ini_read_real("Save1", "room", rKrisRoom);
    var loadedX = ini_read_real("Save1", "x", 0);
    var loadedY = ini_read_real("Save1", "y", 0);
    ini_close();
    room_goto(loadedRoom);
    oPlayer.x = loadedX;
    oPlayer.y = loadedY;
}
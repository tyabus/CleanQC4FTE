//
//      Lights.qc - light entities
//
float START_OFF = 1; // Light on/off spawnflag

void() lightsetup;
void(string soundfile, float volume) doambient; // drom Ambient.qc
void() light = // Basic Light
{
 lightsetup();
};

void() light_fluoro = // Light with hum ambient
{
 lightsetup();
 doambient("ambience/fl_hum1.wav", 0.5);
};

void() light_fluorospark = // Light with buzz ambient
{
 lightsetup();
 doambient("ambience/buzz1.wav", 0.5);
};

void() light_globe = // Light with visible globe
{
 Precache_Set("progs/s_light.spr"); // Set model
 makestatic(self); // Static entity. Never changes.
};

void() light_torch_small_walltorch = // Light with visible wall torch
{
 Precache_Set("progs/flame.mdl"); // Set model
 doambient("ambience/fire1.wav", 0.5);
 makestatic(self); // Static entity. Never changes.
};
                                      
void() light_flame_small_yellow = // Light with small flame & fire sound
{
 Precache_Set("progs/flame2.mdl"); // Set model
 doambient("ambience/fire1.wav", 0.5);
 makestatic(self); // Static entity. Never changes.
};

void() light_flame_large_yellow = // Light with larger flame & fire sound
{
 Precache_Set("progs/flame2.mdl"); // Set model
 doambient("ambience/fire1.wav", 0.5);
 self.frame = 1; // Switch to second frame (large)
 makestatic(self); // Static entity. Never changes.
};

void() light_flame_small_white = // Light with small flame & fire sound
{
 Precache_Set("progs/flame2.mdl"); // Set model
 doambient("ambience/fire1.wav", 0.5);
 makestatic(self); // Static entity. Never changes.
};
                       
void() lightsetup = // Set light on or off, as per spawnflags
{
 if (self.style < 32) {return;} // Dont switch other styles.
 if (self.spawnflags & START_OFF)
  lightstyle(self.style, "a"); // If light starts off, set it off.
 else
  lightstyle(self.style, "m"); // If light starts on, turn it on.
};

void() LightStyles_setup =
{
                                                     lightstyle(0,"m");
                                                     lightstyle(1,"mmnmmommommnonmmonqnmmo");
                                                     lightstyle(2,"abcdefghijklmnopqrstuvwxyzyxwvutsrqponmlkjihgfedcba");
                                                     lightstyle(3,"mmmmmaaaaammmmmaaaaaabcdefgabcdefg");
                                                     lightstyle(4,"mamamamamama"); 
                                                     lightstyle(5,"jklmnopqrstuvwxyzyxwvutsrqponmlkj");
                                                     lightstyle(6,"nmonqnmomnmomomno"); 
                                                     lightstyle(7,"mmmaaaabcdefgmmmmaaaammmaamm");
                                                     lightstyle(8,"mmmaaammmaaammmabcdefaaaammmmabcdefmmmaaaa");
                                                     lightstyle(9,"aaaaaaaazzzzzzzz");
                                                     lightstyle(10,"mmamammmmammamamaaamammma");
                                                     lightstyle(11,"abcdefghijklmnopqrrqponmlkjihgfedcba");
};
void(string modelname) Precache_Set = // Precache model, and set myself to it, simple :)
{
 precache_model(modelname);
 setmodel(self, modelname);
};

void(string soundfile, float volume) doambient = // Precache sound, and do ambient sound
{
 precache_sound (soundfile);
 ambientsound (self.origin, soundfile, volume, ATTN_STATIC);
};

//
//      Misc.qc - misc entities/functions/etc
//
void() func_illusionary =
{
	self.angles = '0 0 0';
        self.movetype = MOVETYPE_NONE;
        self.solid = SOLID_NOT;
        setmodel (self, self.model);
        makestatic (self);
};

void() func_wall_use =
{
        self.frame = 1 - self.frame;
};

void() func_wall =
{       self.solid = SOLID_BSP;
        self.angles = '0 0 0';
        self.movetype = MOVETYPE_PUSH;
        self.use = func_wall_use;
        setmodel (self, self.model);
};

void() func_episodegate =
{
if (!(serverflags & self.spawnflags))
                return; // can still enter episode
        self.angles = '0 0 0';
        self.movetype = MOVETYPE_PUSH;
        self.solid = SOLID_BSP;
        self.use = func_wall_use;
        setmodel (self, self.model);
};
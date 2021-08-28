static const char norm_fg[] = "#bfc9c8";
static const char norm_bg[] = "#002723";
static const char norm_border[] = "#3f5d5a";

static const char sel_fg[] = "#bfc9c8";
static const char sel_bg[] = "#00b7ac";
static const char sel_border[] = "#bfc9c8";

static const char urg_fg[] = "#bfc9c8";
static const char urg_bg[] = "#00c5b4";
static const char urg_border[] = "#00c5b4";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

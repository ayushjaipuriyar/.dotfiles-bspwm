static const char norm_fg[] = "#cde2e7";
static const char norm_bg[] = "#131924";
static const char norm_border[] = "#8f9ea1";

static const char sel_fg[] = "#cde2e7";
static const char sel_bg[] = "#6FA8B8";
static const char sel_border[] = "#cde2e7";

static const char urg_fg[] = "#cde2e7";
static const char urg_bg[] = "#68ABB7";
static const char urg_border[] = "#68ABB7";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

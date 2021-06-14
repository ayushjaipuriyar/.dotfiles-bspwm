static const char norm_fg[] = "#bbd4da";
static const char norm_bg[] = "#12181a";
static const char norm_border[] = "#829498";

static const char sel_fg[] = "#bbd4da";
static const char sel_bg[] = "#47758C";
static const char sel_border[] = "#bbd4da";

static const char urg_fg[] = "#bbd4da";
static const char urg_bg[] = "#2D718D";
static const char urg_border[] = "#2D718D";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

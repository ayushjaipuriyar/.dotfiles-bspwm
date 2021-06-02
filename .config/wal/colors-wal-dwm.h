static const char norm_fg[] = "#aabcc2";
static const char norm_bg[] = "#0b0f11";
static const char norm_border[] = "#768387";

static const char sel_fg[] = "#aabcc2";
static const char sel_bg[] = "#294753";
static const char sel_border[] = "#aabcc2";

static const char urg_fg[] = "#aabcc2";
static const char urg_bg[] = "#1C4452";
static const char urg_border[] = "#1C4452";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

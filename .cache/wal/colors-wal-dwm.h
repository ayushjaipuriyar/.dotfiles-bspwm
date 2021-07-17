static const char norm_fg[] = "#e2dcd0";
static const char norm_bg[] = "#010612";
static const char norm_border[] = "#9e9a91";

static const char sel_fg[] = "#e2dcd0";
static const char sel_bg[] = "#457B97";
static const char sel_border[] = "#e2dcd0";

static const char urg_fg[] = "#e2dcd0";
static const char urg_bg[] = "#366B8C";
static const char urg_border[] = "#366B8C";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

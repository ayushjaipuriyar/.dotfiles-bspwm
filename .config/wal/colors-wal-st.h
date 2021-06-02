const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0b0f11", /* black   */
  [1] = "#1C4452", /* red     */
  [2] = "#294753", /* green   */
  [3] = "#2E5766", /* yellow  */
  [4] = "#346472", /* blue    */
  [5] = "#525C61", /* magenta */
  [6] = "#4F7885", /* cyan    */
  [7] = "#aabcc2", /* white   */

  /* 8 bright colors */
  [8]  = "#768387",  /* black   */
  [9]  = "#1C4452",  /* red     */
  [10] = "#294753", /* green   */
  [11] = "#2E5766", /* yellow  */
  [12] = "#346472", /* blue    */
  [13] = "#525C61", /* magenta */
  [14] = "#4F7885", /* cyan    */
  [15] = "#aabcc2", /* white   */

  /* special colors */
  [256] = "#0b0f11", /* background */
  [257] = "#aabcc2", /* foreground */
  [258] = "#aabcc2",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#12181a", /* black   */
  [1] = "#2D718D", /* red     */
  [2] = "#47758C", /* green   */
  [3] = "#348CA6", /* yellow  */
  [4] = "#549DB2", /* blue    */
  [5] = "#6CB4C5", /* magenta */
  [6] = "#79C0CE", /* cyan    */
  [7] = "#bbd4da", /* white   */

  /* 8 bright colors */
  [8]  = "#829498",  /* black   */
  [9]  = "#2D718D",  /* red     */
  [10] = "#47758C", /* green   */
  [11] = "#348CA6", /* yellow  */
  [12] = "#549DB2", /* blue    */
  [13] = "#6CB4C5", /* magenta */
  [14] = "#79C0CE", /* cyan    */
  [15] = "#bbd4da", /* white   */

  /* special colors */
  [256] = "#12181a", /* background */
  [257] = "#bbd4da", /* foreground */
  [258] = "#bbd4da",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

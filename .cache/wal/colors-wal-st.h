const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#002723", /* black   */
  [1] = "#00c5b4", /* red     */
  [2] = "#00b7ac", /* green   */
  [3] = "#01a9a7", /* yellow  */
  [4] = "#019baa", /* blue    */
  [5] = "#0188aa", /* magenta */
  [6] = "#0270aa", /* cyan    */
  [7] = "#bfc9c8", /* white   */

  /* 8 bright colors */
  [8]  = "#3f5d5a",  /* black   */
  [9]  = "#00c5b4",  /* red     */
  [10] = "#00b7ac", /* green   */
  [11] = "#01a9a7", /* yellow  */
  [12] = "#019baa", /* blue    */
  [13] = "#0188aa", /* magenta */
  [14] = "#0270aa", /* cyan    */
  [15] = "#bfc9c8", /* white   */

  /* special colors */
  [256] = "#002723", /* background */
  [257] = "#bfc9c8", /* foreground */
  [258] = "#bfc9c8",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

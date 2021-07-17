const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#010612", /* black   */
  [1] = "#366B8C", /* red     */
  [2] = "#457B97", /* green   */
  [3] = "#8E7C88", /* yellow  */
  [4] = "#6195AA", /* blue    */
  [5] = "#9AAFB0", /* magenta */
  [6] = "#CBB2A1", /* cyan    */
  [7] = "#e2dcd0", /* white   */

  /* 8 bright colors */
  [8]  = "#9e9a91",  /* black   */
  [9]  = "#366B8C",  /* red     */
  [10] = "#457B97", /* green   */
  [11] = "#8E7C88", /* yellow  */
  [12] = "#6195AA", /* blue    */
  [13] = "#9AAFB0", /* magenta */
  [14] = "#CBB2A1", /* cyan    */
  [15] = "#e2dcd0", /* white   */

  /* special colors */
  [256] = "#010612", /* background */
  [257] = "#e2dcd0", /* foreground */
  [258] = "#e2dcd0",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

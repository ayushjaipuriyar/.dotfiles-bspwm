const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#131924", /* black   */
  [1] = "#68ABB7", /* red     */
  [2] = "#6FA8B8", /* green   */
  [3] = "#77B2C6", /* yellow  */
  [4] = "#84B1BB", /* blue    */
  [5] = "#88BAC9", /* magenta */
  [6] = "#93C7D4", /* cyan    */
  [7] = "#cde2e7", /* white   */

  /* 8 bright colors */
  [8]  = "#8f9ea1",  /* black   */
  [9]  = "#68ABB7",  /* red     */
  [10] = "#6FA8B8", /* green   */
  [11] = "#77B2C6", /* yellow  */
  [12] = "#84B1BB", /* blue    */
  [13] = "#88BAC9", /* magenta */
  [14] = "#93C7D4", /* cyan    */
  [15] = "#cde2e7", /* white   */

  /* special colors */
  [256] = "#131924", /* background */
  [257] = "#cde2e7", /* foreground */
  [258] = "#cde2e7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

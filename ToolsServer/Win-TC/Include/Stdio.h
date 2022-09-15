/*      stdio.h

        Definitions for stream input/output.

        Copyright (c) Borland International 1987,1988
        All Rights Reserved.
*/
#if __STDC__
#define _Cdecl
#else
#define _Cdecl  cdecl
#endif

#if     !defined(__STDIO_DEF_)
#define __STDIO_DEF_

#ifndef _SIZE_T
#define _SIZE_T
typedef unsigned size_t;
#endif
#ifndef NULL
#   if defined(__TINY__) || defined(__SMALL__) || defined(__MEDIUM__)
#   define      NULL    0
#   else
#   define      NULL    0L
#   endif
#endif

#if     !defined(__STDARG)
#include        <stdarg.h>
#endif

/* Definition of the file position type
*/
typedef long    fpos_t;

/* Definition of the control structure for streams
*/
typedef struct  {
        short           level;          /* fill/empty level of buffer */
        unsigned        flags;          /* File status flags    */
        char            fd;             /* File descriptor      */
        unsigned char   hold;           /* Ungetc char if no buffer */
        short           bsize;          /* Buffer size          */
        unsigned char   *buffer;        /* Data transfer buffer */
        unsigned char   *curp;          /* Current active pointer */
        unsigned        istemp;         /* Temporary file indicator */
        short           token;          /* Used for validity checking */
}       FILE;                           /* This is the FILE object */

/* Bufferisation type to be used as 3rd argument for "setvbuf" function
*/
#define _IOFBF  0
#define _IOLBF  1
#define _IONBF  2

/*      "flags" bits definitions
*/
#define _F_RDWR 0x0003                  /* Read/write flag      */
#define _F_READ 0x0001                  /* Read only file       */
#define _F_WRIT 0x0002                  /* Write only file      */
#define _F_BUF  0x0004                  /* Malloc'ed Buffer data */
#define _F_LBUF 0x0008                  /* line-buffered file   */
#define _F_ERR  0x0010                  /* Error indicator      */
#define _F_EOF  0x0020                  /* EOF indicator        */
#define _F_BIN  0x0040                  /* Binary file indicator */
#define _F_IN   0x0080                  /* Data is incoming     */
#define _F_OUT  0x0100                  /* Data is outgoing     */
#define _F_TERM 0x0200                  /* File is a terminal   */

/* End-of-file constant definition
*/
#define EOF     (-1)                    /* End of file indicator */

/* Number of files that can be open simultaneously
*/
#define OPEN_MAX 20                     /* Total of 20 open files */
#define SYS_OPEN 20

/* Default buffer size use by "setbuf" function
*/
#define BUFSIZ  512                     /* Buffer size for stdio */

/* Size of an arry large enough to hold a temporary file name string
*/
#define L_ctermid       5               /* CON: plus null byte */
#define L_tmpnam        13              /* tmpnam buffer size */

/* Constants to be used as 3rd argument for "fseek" function
*/
#define SEEK_CUR        1
#define SEEK_END        2
#define SEEK_SET        0

/* Number of unique file names that shall be generated by "tmpnam" function
*/
#define TMP_MAX         0xFFFF

/* Standard I/O predefined streams
*/
extern  FILE    _Cdecl _streams[];

#define stdin   (&_streams[0])
#define stdout  (&_streams[1])
#define stderr  (&_streams[2])
#define stdaux  (&_streams[3])
#define stdprn  (&_streams[4])

void     _Cdecl clearerr (FILE *stream);
int      _Cdecl fclose   (FILE *stream);
int      _Cdecl fflush   (FILE *stream);
int      _Cdecl fgetc    (FILE *stream);
int      _Cdecl fgetpos  (FILE *stream, fpos_t *pos);
char    *_Cdecl fgets    (char *s, int n, FILE *stream);
FILE    *_Cdecl fopen    (const char *path, const char *mode);
int      _Cdecl fprintf  (FILE *stream, const char *format, ...);
int      _Cdecl fputc    (int c, FILE *stream);
int      _Cdecl fputs    (const char *s, FILE *stream);
size_t   _Cdecl fread    (void *ptr, size_t size, size_t n, FILE *stream);
FILE    *_Cdecl freopen  (const char *path, const char *mode, 
                          FILE *stream);
int      _Cdecl fscanf   (FILE *stream, const char *format, ...);
int      _Cdecl fseek    (FILE *stream, long offset, int whence);
int      _Cdecl fsetpos  (FILE *stream, const fpos_t *pos);
long     _Cdecl ftell    (FILE *stream);
size_t   _Cdecl fwrite   (const void *ptr, size_t size, size_t n,
                          FILE *stream);
char    *_Cdecl gets     (char *s);
void     _Cdecl perror   (const char *s);
int      _Cdecl printf   (const char *format, ...);
int      _Cdecl puts     (const char *s);
int      _Cdecl rename   (const char *oldname, const char *newname);
void     _Cdecl rewind   (FILE *stream);
int      _Cdecl scanf    (const char *format, ...);
void     _Cdecl setbuf   (FILE *stream, char *buf);
int      _Cdecl setvbuf  (FILE *stream, char *buf, int type, size_t size);
int      _Cdecl sprintf  (char *buffer, const char *format, ...);
int      _Cdecl sscanf   (const char *buffer, const char *format, ...);
char    *_Cdecl strerror (int errnum);
FILE    *_Cdecl tmpfile  (void);
char    *_Cdecl tmpnam   (char *s);
int      _Cdecl ungetc   (int c, FILE *stream);
int      _Cdecl vfprintf (FILE *stream, const char *format, va_list arglist);
int      _Cdecl vfscanf  (FILE *stream, const char *format, va_list arglist);
int      _Cdecl vprintf  (const char *format, va_list arglist);
int      _Cdecl vscanf   (const char *format, va_list arglist);
int      _Cdecl vsprintf (char *buffer, const char *format, va_list arglist);
int      _Cdecl vsscanf  (const char *buffer, const char *format, va_list arglist);

#if !__STDC__
int      _Cdecl fcloseall(void);
FILE    *_Cdecl fdopen   (int handle, char *type);
int      _Cdecl fgetchar (void);
int      _Cdecl flushall (void);
int      _Cdecl fputchar (int c);
int      _Cdecl getw     (FILE *stream);
int      _Cdecl putw     (int w, FILE *stream);
char    *_Cdecl _strerror(const char *s);
int      _Cdecl unlink   (const char *path);

#endif

int      _Cdecl _fgetc   (FILE *stream);             /* used by getc() macro */
int      _Cdecl _fputc   (char c, FILE *stream);     /* used by putc() macro */

/*      The following macros provide for common functions */

#define ferror(f)       ((f)->flags & _F_ERR)
#define feof(f)         ((f)->flags & _F_EOF)
#define fileno(f)       ((f)->fd)
#define remove(path)    unlink(path)

#define getc(f) \
  ((--((f)->level) >= 0) ? (unsigned char)(++(f)->curp)[-1] : \
	_fgetc (f))
#define putc(c,f) \
  ((++((f)->level) < 0) ? (unsigned char)((++(f)->curp)[-1]=(c)) : \
	_fputc ((c),f))

#define getchar()  getc(stdin)
#define putchar(c) putc((c), stdout)

#define ungetc(c,f)     ungetc((c),f)   /* traditionally a macro */

#endif


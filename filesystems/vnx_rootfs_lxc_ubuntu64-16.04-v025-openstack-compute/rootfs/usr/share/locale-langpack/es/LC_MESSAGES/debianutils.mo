��    �                   g   !     �     �  
   �     �     �     �     �     �     �     �     �     �     �  
   �  
   �  	   �  q   �     k     q  	   �  	   �     �     �     �     �     �  	   �     �     �     
          !     '     8     Q     W     c     }     �     �     �     �     �  
   �     �     �     �     �               $     *     D     [  
   a     l     �     �     �     �  +   �  �   �  9   �  �   �  C   k  O   �     �  .     �   >       �     �   �  �   Q  �   �     �  �   �    K     P  :  l     �  	   �     �     �  '   �  H        f     r     y     �     �     �  �   �  4   W  4   �  �   �  B   �  `   �  �   0   ,   �   7   !     V!     d!  t   m!  �   �!  e  �"  �   $  �   �$  C   n%  r   �%     %&     *&  p   2&  (   �&  V   �&  S   #'     w'  ?   �'  J   �'  C   (     ](     j(  	   x(     �(     �(     �(  W   �(     �(  q   �(  �   o)  *   �)  M   !*  �   o*    �*  4   ,  r   C,  6   �,  o  �,     ].     c.  8   f.     �.     �.     �.  '   �.  *   �.  &   /  #   (/      L/  @   m/     �/  #   �/  '   �/     �/  3   0  ;   K0      �0  2   �0  !   �0  $   �0      "1  B   C1  ^   �1  *   �1  �   2  (   �2  ?   �2  V   3  1   q3  -   �3  7   �3  �   	4  O   �4  @   �4  %   '5  �   M5  2   �5  .   $6     S6  �   m6  �   �6  �   �7  3   :8      n8  )   �8  1   �8     �8  n   	9    x9     �:     �:  �  �:  g   �<     =     	=     =     =      =     3=     5=     8=     L=     O=     c=     v=     y=     |=     �=  	   �=  �   �=     3>     9>  	   L>  	   V>     `>     p>      �>     �>     �>  	   �>     �>     �>     �>     �>     �>     ?     ?     -?     3?      ??     `?     f?     ~?     �?     �?     �?  
   �?     �?     �?     �?     �?     �?     @     
@     @     *@     A@     G@     U@     m@     ~@     �@     �@  5   �@  �   �@  ;   gA  �   �A  C   �B  m   �B     ?C  8   OC  �   �C     _D  �   oD  �   6E  �   �E  �   �F     BG  �   OG  )  H     5I  |  QI     �J  	   �J     �J     �J  '   K  H   FK     �K     �K     �K     �K     �K     �K  �   �K  @   �L  @   �L  �   M  D   �M  ^   *N  �   �N  ,   yO  B   �O     �O     �O  �    P  �   �P  �  QQ  �   �R  �   �S  ;   _T  g   �T     U     
U  �   U  8   �U  j   �U  \   bV     �V  H   �V  r   (W  P   �W     �W     �W  	   X     X     X     -X  r   6X     �X  �   �X  �   SY  9   �Y  E   (Z  �   nZ  -  [  C   6\  �   z\  ?   
]  �  J]     _     _  G   _     __     b_     r_  K   u_  ;   �_  M   �_  $   K`  !   p`  M   �`     �`  (   �`  A   a     Na  N   ha  O   �a  F   b  <   Nb  "   �b  (   �b  %   �b  5   �b  i   3c  4   �c  �   �c  ;   �d  U   �d  c    e  A   �e  C   �e  Y   
f  �   df  H   g  L   Kg  .   �g  �   �g  8   �h  .   �h  2   �h  �   i  �   �i  �   �j  3   +k  B   _k  E   �k  D   �k  1   -l  �   _l  L  �l     Dn      \n                /   \      L   z   V   H   0   �   B   �   �   �       �   O   �   I   ~   �       #   l       �       �      �              M   �   |      %   }   2       6                       �   �   p      _       X   )   ?   �       j   {       f   �   �   �   �   	   N         E              R      &   �       �   F                             u       x   �   "   �   ,   �      �                      �   �   .   s       1   �   G   :   �   �                 ^           d   Q   i   @          �   �       J           -   �   e   g   �           3   v   n       7   �   Y   c   r                      o       4   $   h   k   �   �   a   �   ;             �           �   5   A   P   Z       �   �   
   �   �       *   �   C   m       y   �   �           >   �   �   �   w   �   �   !   9       `   8   (   T   t   q           �       ]      �   [   �   W      �   �   S       <       D              �   �                  U   �   �   +   =   '   b   �   �           K   �      �       �    #!/bin/sh
#[...]
t=$(tempfile) || exit
trap "rm -f -- '$t'" EXIT
#[...]
rm -f -- "$t"
trap - EXIT
exit
 0 1 1 May 2009 1) 12 May 2011 2 2) 27 Jun 2012 3) 30 Jun 2010 30 May 2011 4) 5) 7 Apr 2005 7 Jan 2001 ADD-SHELL An exit status of 0 means the temporary file was created successfully.  Any other exit status indicates an error. B<--> B<--exit-on-error> B<--help> B<--list> B<--lsbsysinit> B<--new-session> B<--regex=>I<RE> B<--report> B<--reverse> B<--test> B<--version> B<-1\ .\|.\ -9> B<-C> B<-D dateformat> B<-J> B<-V, --version> B<-a, --arg=>I<argument> B<-a> B<-c cycle> B<-d, --directory >I<DIR> B<-d> B<-f, --default-false > B<-g group> B<-h, --help> B<-j> B<-l> B<-m mode> B<-m, --mode >I<MODE> B<-n, --name >I<FILE> B<-n> B<-p, --prefix >I<STRING> B<-p> B<-q> B<-r> B<-s, --suffix >I<STRING> B<-t, --default-true > B<-t> B<-u user> B<-u, --umask=>I<umask> B<-v, --verbose> B<0> B<1> B<2> B<add-shell> I<shellname> [I<shellname>...] B<add-shell> copies I</etc/shells> to I</etc/shells.tmp>, adds the given shells to this file if they are not already present, and copies this temporary file back to I</etc/shells>. B<installkernel >I<version zImage System.map [directory]> B<installkernel> installs a new kernel image onto the system from the Linux source tree.  It is called by the Linux kernel makefiles when B<make install> is invoked there. B<ischroot> [--default-false] [--default-true] [--help] [--version] B<ischroot> detects if it is currently running in a chroot. The exit status is: B<logrotate>(8) B<remove-shell> I<shellname> [I<shellname>...] B<remove-shell> operates on the temporary files I</etc/shells.tmp> and I</etc/shells.tmp2> to remove the given shells from the list of valid login shells, and copy the result back to I</etc/shells>. B<run-parts> -V B<run-parts> [--test] [--verbose] [--report] [--lsbsysinit] [--regex=RE] [--umask=umask] [--arg=argument] [--exit-on-error] [--help] [--version] [--list] [--reverse] [--] DIRECTORY B<run-parts> is free software; see the GNU General Public License version 2 or later for copying conditions.  There is I<no> warranty. B<run-parts> runs all the executable files named within constraints described below, found in directory I<directory>.  Other files and directories are silently ignored. B<savelog> [-m mode] [-u user] [-g group] [-t] [-p] [-c cycle] [-l] [-j] [-J] [-1\ .\|.\ -9] [-C] [-d] [-l] [-r rolldir] [-n] [-q] [-D dateformat] file ... B<shells>(5) B<tempfile> [-d DIR] [-p STRING] [-s STRING] [-m MODE] [-n FILE] [--directory=DIR] [--prefix=STRING] [--suffix=STRING] [--mode=MODE] [--name=FILE] [--help] [--version] B<tempfile> creates a temporary file in a safe manner.  It uses B<tempnam>(3)  to choose the name and opens it with O_RDWR | O_CREAT | O_EXCL.  The filename is printed on standard output. See B<tempnam>(3)  for the actual steps involved in directory selection. B<tempnam>(3), B<mktemp>(1) B<which> returns the pathnames of the files (or links) which would be executed in the current environment, had its arguments been given as commands in a strictly POSIX-conformant shell.  It does this by searching the PATH for executable files matching the names of the arguments. It does not follow symbolic links. BUGS COPYRIGHT Copyright (C) 1994 Ian Jackson. Copyright (C) 1996 Jeff Noxon. Copyright (C) 1996, 1997, 1998 Guy Maor Copyright (C) 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009 Clint Adams DESCRIPTION Debian Debian Linux EXAMPLE EXAMPLES EXIT STATUS Exclusive creation is not guaranteed when creating files on NFS partitions.  tempfile cannot make temporary directories.  tempfile is deprecated; you should use mktemp(1) instead. Exit with status 0 if the detection is not possible. Exit with status 1 if the detection is not possible. Files are run in the lexical sort order (according to the C/POSIX locale character collation rules) of their names unless the --reverse option is given, in which case they are run in the opposite order. Finally an implementation-defined directory I<(/tmp)> may be used. For files that do exist and have lengths greater than zero, the following actions are performed: For xz no strength option is set, and xz decides on the default based on the total amount of physical RAM. Note that xz can use a very large amount of memory for the higher compression levels. Generate the file with STRING as the suffix. I<file>.I<E<lt>numberE<gt>>I<E<lt>compress_suffixE<gt>> INSTALLKERNEL ISCHROOT If a process is still writing to I<file.0>, and savelog moves it to I<file.1> and compresses it, data could be lost. If neither the --lsbsysinit option nor the --regex option is given then the names must consist entirely of ASCII upper- and lower-case letters, ASCII digits, ASCII underscores, and ASCII minus-hyphens. If the --lsbsysinit option is given, then the names must not end in .dpkg-old or .dpkg-dist or .dpkg-new or .dpkg-tmp, and must belong to one or more of the following namespaces: the LANANA-assigned namespace (^[a-z0-9]+$); the LSB hierarchical and reserved namespaces (^_?([a-z0-9_.]+-)+[a-z0-9]+$); and the Debian cron script namespace (^[a-zA-Z0-9_-]+$). If the --regex option is given, the names must match the custom extended regular expression specified as that option's argument. If the B<-m>, B<-u>, B<-g>, B<-t>, or B<-p> flags are given, then an empty I<file> is created subject to the given flags.  With the B<-p> flag, the file is created with the same owner, group, and permissions as before. If the file does not exist and B<-t> was given, it will be created. In case the environment variable B<TMPDIR> exists and contains the name of an appropriate directory, that is used. NAME OPTIONS On GNU/Linux, chroot detection is not possible when not root. This works correctly on GNU/Hurd and GNU/kFreeBSD. Open the file with MODE instead of 0600. Otherwise, I<P_tmpdir> (as defined in I<E<lt>stdio.hE<gt>>)  is used when appropriate. Otherwise, if the I<--directory> argument is specified and appropriate, it is used. Place the file in DIR. Print a usage message on standard output and exit successfully. Print the names of all files in /etc that start with `p' and end with `d': Print version information on standard output and exit successfully. REMOVE-SHELL RETURN VALUES RUN-PARTS SAVELOG SEE ALSO SYNOPSIS Save cycle versions of the logfile (default: 7). The I<cycle> count must be at least 2. TEMPFILE The B<savelog> command saves and optionally compresses old copies of files.  Older versions of I<file> are named: The directory in which to create the file might be searched for in this order (but refer to B<tempnam>(3)  for authoritative answers): The main I<file> is moved to I<file>.I<0>. The new I<file>.I<0> is changed subject to the B<-m>, B<-u>, and B<-g> flags. The new I<file>.I<1> is compressed unless the B<-l> flag was given.  It is changed subject to the B<-m>, B<-u>, and B<-g> flags. The new kernel is installed into I<{directory}/vmlinuz-{version}>.  If a symbolic link I<{directory}/vmlinuz> already exists, it is refreshed by making a link from I<{directory}/vmlinuz> to the new kernel, and the previously installed kernel is available as I<{directory}/vmlinuz.old>. The shells must be provided by their full pathnames. Use FILE for the name instead of B<tempnam>(3)B<.> The options -d, -p, and -s are ignored if this option is given. Use up to five letters of STRING to generate the name. Version numbered files are cycled.  Version I<file>.I<2> is moved to version I<file>.I<3>, version I<file>.I<1> is moved to version I<file>.I<2>, and so on.  Finally version I<file>.I<0> is moved to version I<file>.I<1>, and version I<file> is deleted.  Both compressed names and uncompressed names are cycled, regardless of B<-l>.  Missing version files are ignored. WHICH a) add-shell - add shells to the list of valid login shells b) be quiet c) chgrp log files to group, implies B<-t> chmod the log files to mode, implies B<-t> chown log files to user, implies B<-t> compress with bzip2 instead of gzip compress with xz instead of gzip compression strength or memory usage (default: 9, except for xz) d) display usage information and exit. display version and copyright and exit. do not rotate empty files don't compress any log files (default: do compress) exit as soon as a script returns with a non-zero exit code. force cleanup of cycled logfiles if all specified commands are found and executable if an invalid option is specified if currently not running in a chroot if currently running in a chroot if one or more specified commands is nonexistent or not executable if the detection is not possible (On GNU/Linux this happens if the script is not run as root). installkernel - install a new kernel image installkernel resides in /sbin only because the Linux kernel makefiles call it from there.  It should really be in /usr/sbin.  It isn't needed to boot a system. ischroot - detect if running in a chroot override date format, in the form of I<[MMDDhhmm[[CC]YY][.ss]]> pass I<argument> to the scripts.  Use B<--arg> once for each argument you want passed. preserve owner, group, and permissions of logfile print all matching pathnames of each argument print the name of each script to stderr before running. print the names of the all matching files (not limited to executables), but don't actually run them. This option cannot be used with --test. print the names of the scripts which would be run, but don't actually run them. remove-shell - remove shells from the list of valid login shells reverse the scripts' execution order. run each script in a separate process session.  If you use this option, killing run-parts will not kill the currently running script, it will run until completion. run-parts - run scripts or programs in a directory run-parts --list --regex \[aq]^p.*d$\[aq] /etc savelog - save a log file sets the umask to I<umask> before running the scripts.  I<umask> should be specified in octal.  By default the umask is set to 022. similar to B<--verbose>, but only prints the name of scripts which produce output.  The script's name is printed to whichever of stdout or stderr the script first produces output on. specifies that this is the end of the options.  Any filename after B<--> will be not be interpreted as an option even if it starts with a hyphen. tempfile - create a temporary file in a safe manner touch new logfile into existence use I<rolldir> instead of . to roll files use LSB namespaces instead of classical behavior. use standard date for rolling validate filenames against custom extended regular expression I<RE>.  See the EXAMPLES section for an example. where I<E<lt>numberE<gt>> is the version number, 0 being the newest.  Version numbers E<gt> 0 are compressed unless B<-l> prevents it.  Version number 0 is not compressed because a process might still have I<file> opened for I/O.  Only I<cycle> versions of the file are kept. which - locate a command which [-a] filename ... Project-Id-Version: debianutils 4.3.3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2012-06-27 21:46-0300
PO-Revision-Date: 2013-12-18 21:39+0000
Last-Translator: Omar Campagne <ocampagne@gmail.com>
Language-Team: Debian l10n Spanish <debian-l10n-spanish@lists.debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 16:09+0000
X-Generator: Launchpad (build 18115)
X-Project-Style: default
Language: es
 #!/bin/sh
#[...]
t=$(tempfile) || exit
trap "rm -f -- '$t'" EXIT
#[...]
rm -f -- "$t"
trap - EXIT
exit
 0 1 1 de mayo de 2009 1) 12 de mayo de 2011 2 2) 27 de junio de 2012 3) 30 de junio de 2010 30 de mayo de 2011 4) 5) 7 de abril de 2005 7 de enero de 2001 ADD-SHELL Un estado de salida cero significa que el fichero temporal ha sido creado con éxito. Cualquier otro estado de salida indica un fallo. B<--> B<--exit-on-error> B<--help> B<--list> B<--lsbsysinit> B<--new-session> B<--regex=>I<expresión-regular> B<--report> B<--reverse> B<--test> B<--version> B<-1\ .\|.\ -9> B<-C> B<-D formato-fecha> B<-J> B<-V, --version> B<-a, --arg=>I<argumento> B<-a> B<-c ciclo> B<-d, --directory >I<DIRECTORIO> B<-d> B<-f, --default-false > B<-g grupo> B<-h, --help> B<-j> B<-l> B<-m modo> B<-m, --mode >I<MODO> B<-n, --name >I<FICHERO> B<-n> B<-p, --prefix >I<CADENA> B<-p> B<-q> B<-r> B<-s, --suffix >I<CADENA> B<-t, --default-true > B<-t> B<-u usuario> B<-u, --umask=>I<umask> B<-v, --verbose> B<0> B<1> B<2> B<add-shell> I<nombre-consola> [I<nombre-consola>...] B<add-shell> copia I</etc/shells> a I</etc/shells.tmp>, añade las consolas a este fichero si no están presentes, y copia este fichero temporal  a I</etc/shells>. B<installkernel >I<versión zImage System.map [directorio]> B<installkernel> instala una nueva imagen del núcleo en el sistema, obtenida del árbol de fuentes de Linux. Los ficheros «Makefile» del núcleo Linux inician el proceso cuando se invoca B<make install> desde el árbol de fuentes. B<ischroot> [--default-false] [--default-true] [--help] [--version] B<ischroot> detecta si se ha ejecutado en el momento presente desde una jaula chroot. El estado de salida es: B<logrotate>(8) B<remove-shell> I<nombre-consola> [I<nombre-consola>...] B<remove-shell> modifica los archivos temporales I</etc/shells.tmp> y I</etc/shells.tmp2> para eliminar las consolas introducidas de la lista de consolas de sesión admitidas, y copia el resultado a I</etc/shells>. B<run-parts> -V B<run-parts> [--test] [--verbose] [--report] [--lsbsysinit] [--regex=EXPRESIÓN-REGULAR] [--umask=umask] [--arg=argumento] [--exit-on-error] [--help] [--version] [--list] [--reverse] [--] DIRECTORIO B<run-parts> es software libre; consulte la versión 2 o posterior de la Licencia Pública General GNU para condiciones de copia. I<No> hay ninguna garantía. B<run-parts> ejecuta todos los ficheros con permisos de ejecución, dentro de los limites descritos a continuación, que se encuentran en el I<directorio>. Se ignoran otros ficheros o directorios. B<savelog> [-m modo] [-u usuario] [-g grupo] [-t] [-p] [-c ciclo] [-l] [-j] [-J] [-1\ .\|.\ -9] [-C] [-d] [-l] [-r directorio] [-n] [-q] [-D formato-fecha] fichero ... B<shells>(5) B<tempfile> [-d DIRECTORIO] [-p CADENA] [-s CADENA] [-m MODO] [-n FICHERO] [--directory=DIRECTORIO] [--prefix=CADENA] [--suffix=CADENA] [--mode=MODO] [--name=FICHERO] [--help] [--version] B<tempfile> crea un fichero temporal de manera segura. Utiliza B<tempnam>(3) para seleccionar un nombre, y lo abre con « O_RDWR | O_CREAT | O_EXCL». El nombre de fichero se muestra por la salida estándar. Consulte B<tempnam>(3) para ver los pasos que se toman para la selección del directorio. B<tempnam>(3), B<mktemp>(1) B<which> devuelve los nombres de ruta de ficheros (o enlaces) que se ejecutarían en el entorno actual, en el caso de haber introducido sus argumentos como órdenes en un intérprete de órdenes estrictamente conforme con las normas POSIX. Para ello, busca ficheros ejecutables dentro de «PATH» cuyo nombre coincida con el nombre de los argumentos. No sigue enlaces simbólicos. FALLOS COPYRIGHT Copyright (C) 1994 Ian Jackson. Copyright (C) 1996 Jeff Noxon. Copyright (C) 1996, 1997, 1998 Guy Maor Copyright (C) 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009 Clint Adams DESCRIPCIÓN Debian Debian Linux EJEMPLO EJEMPLOS ESTADO DE SALIDA No se garantiza la creación exclusiva al crear ficheros en particiones NFS. tempfile no puede crear directorios temporales. tempfile está obsoleto, debe utilizar mktemp(1) en su lugar. Cierra con un estado de salida 0 si la detección no es posible. Cierra con un estado de salida 1 si la detección no es posible. Los ficheros se ejecutan en orden alfabético (de acuerdo a las reglas de ordenación de caracteres de locale C/POSIX) a menos que se introduzca la opción «--reverse», en cuyo caso se ejecutan en orden inverso. Por último, se puede utilizar el directorio implementado I<(/tmp)>. Se permiten las siguientes acciones con ficheros que existen, y con un tamaño mayor que cero: No se define ningún nivel de compresión para xz, y xz decide el valor predeterminado basándose en la cantidad total de RAM física. Tenga en cuenta que xz puede usar una gran cantidad de memoria en los niveles de compresión más altos. Genera el fichero con la CADENA como sufijo. I<fichero>.I<E<lt>númeroE<gt>>I<E<lt>extensión_compresiónE<gt>> INSTALLKERNEL ISCHROOT Si un proceso aún está editando I<fichero.0>, y «savelog» lo renombra como I<fichero.1>, comprimiéndolo, se pueden perder datos. Si no se introducen las opción «--lsbsysinit» o «--regex», los nombres sólo pueden incluir caracteres ASCII mayúsculas y minúsculas, dígitos ASCII, guiones bajos ASCII, y signos de resta ASCII. SI se introduce la opción «--lsbsysinit», los nombres no pueden finalizar con «.dpkg-old», «.dpkg-dist», «.dpkg-new» o «dpkg-tmp». Además, deben pertenecer a uno de los siguientes espacios de nombre: el espacio asignado por LANANA , (^[a-z0-9]+$); los espacios de nombre jerárquicos y reservados LSB, (^_?([a-z0-9_.]+-)+[a-z0-9]+$); y el espacio de nombre del script para cron de Debian, (^[a-zA-Z0-9_-]+$). Si se introduce la opción «--regex», los nombres deben coincidir con la expresión regular extendida definida como argumento a esa opción. Si se introducen las opciones B<-m>, B<-u>, B<-g>, B<-t> o B<-p>, se crea un I<fichero>, de acuerdo a las opciones dadas. Con la opción B<-p>, el fichero se crea con el mismo propietario, grupo y permisos originales. Si el fichero no existe y se introduce B<-t>, este se crea. Si existe la variable de entorno B<TMPDIR>, y contiene el nombre de un directorio adecuado, se utiliza. NOMBRE OPCIONES En sistemas GNU/Linux, no es posible detectar una jaula chroot si no se ejecuta con permisos de administrador. Funciona correctamente en sistemas GNU/Hurd y GNU/kFreeBSD. Utiliza el MODO para abrir el fichero, en lugar de 0600. De no ser así, se utiliza I<P_tmpdir> (tal y como se define en I<E<lt>stdio.hE<gt>>) cuando es apropiado. En caso contrario, si se define el argumento I<--directory>, y es adecuado, se utiliza este. Copia el fichero al DIRECTORIO. Muestra información de uso por la salida estándar y cierra con éxito. Lo siguiente muestra los nombres de todos los ficheros bajo «/etc» que empiezan con «p», y terminan con «d». Muestra información de la versión por la salida estándar y cierra con éxito. REMOVE-SHELL ESTADOS DE SALIDA RUN-PARTS SAVELOG VÉASE TAMBIÉN SINOPSIS Guarda versiones de ciclo del fichero de registro (por omisión: 7). El recuento del I<ciclo> debe ser al menos 2. TEMPFILE La orden B<savelog> guarda y, de forma opcional, comprime copias antiguas de ficheros. Las versiones anteriores del I<fichero> se nombran de la siguiente forma: Se busca el directorio en el que crear el fichero en el siguiente orden (sin embargo, consulte B<tempnam>(3) para ver información de la fuente original): El I<fichero> principal se renombra como I<fichero>.I<0>. Las opciones B<-m>, B<-u> y B<-g> modifican el nuevo I<fichero>.I<0>. El I<fichero>.I<1> nuevo se comprime, a menos que se introduzca la opción B<-l>. Puede cambiar el funcionamiento con las opciones B<-m>, B<-u>, y B<-g>. El núcleo nuevo se instala en I<{directorio}/vmlinuz-{versión}>. Si ya existe un enlace simbólico I<{directorio}/vmlinuz>, este se actualiza, creando un enlace desde el I<{directory}/vmlinuz> al núcleo nuevo. El núcleo anteriormente instalado seguirá disponible como I<{directorio}/vmlinuz.old>. Las consolas se deben introducir con sus nombres de ruta completos. Utiliza el FICHERO para el nombre, en lugar de B<tempnam>(3)B<.> Si se introduce esta opción, se ignoran las opciones «-d», «-p» y «-s». Utiliza hasta cinco letras de la CADENA para generar el nombre. Los ficheros con número de versión pasan por un ciclo. La versión I<fichero>.I<2> se renombra como I<fichero>.I<3>, la versión I<fichero>.I<1> pasa a ser I<fichero>.I<2>, y así sucesivamente. Por último, la versión I<fichero>.I<0> se renombra como la versión I<fichero>.I<1>, y se elimina la versión I<fichero>. Los nombres, comprimidos o descomprimidos, pasan por el ciclo, sin importar el uso de B<-l>. Se ignoran los ficheros sin versión. WHICH a) add-shell - Añade consolas a la lista de consolas de sesión admitidas b) Modo silencioso c) Define al grupo como propietario de los ficheros de registro, implica B<-t> Define el modo para los ficheros de registro, implica B<-t> Define al usuario como propietario de los ficheros de registro, implica B<-t> Comprime con bzip2, en lugar de gzip Comprime con xz, en lugar de gzip Define el nivel de compresión o uso de memoria (por omisión: 9, excepto xz) d) Muestra la información de uso y cierra. Muestra la versión e información acerca del copyright y cierra. No itera ficheros vacíos No comprime ficheros de registro de eventos (comprime de forma predeterminada) Cancela el proceso si un script devuelve un código de salida distinto de cero. Fuerza la limpieza de ficheros de registro que han completado un ciclo Se han encontrado las órdenes definidas, y son ejecutables. La opción definida no es válida. Si no se ejecuta desde una jaula chroot. Si se ejecuta desde una jaula chroot. Una o más órdenes no existen, o no son ejecutables. Si no es posible detectarlo (Ocurre en sistemas GNU/Linux si el script no se ejecuta como administrador). installkernel - Instala una imagen del núcleo nueva installkernel se ubica bajo «/sbin» ya que los ficheros «Makefile» del núcleo Linux lo invocan desde ahí. Debería estar bajo «/usr/sbin». No es necesario para iniciar un sistema. ischroot - Detecta si se ejecuta dentro de una jaula chroot Sobreescribe el formato de fecha, con el siguiente formato I<[MMDDhhmm[[CC]YY][.ss]]> Introduce el I<argumento> a los scripts. Cada argumento a introducir debe ir precedido de B<--arg>. Preserva el propietario, grupo y permisos del fichero de registro Muestra todos los nombres de ruta que coincidan con cada argumento. Muestra el nombre de cada script por la salida de error estándar antes de su ejecución. Muestra los nombres de todos los ficheros coincidentes (no se limita a ejecutables), sin ejecutarlos. Esta opción no se puede utilizar junto con «--test». Muestra los nombres de los scripts que se ejecutarían, sin ejecutarlos. remove-shell - Elimina consolas de la lista de consolas de sesión admitidas Invierte el orden de ejecución de los scripts Ejecuta cada script en una sesión diferente. Si usa esta opción, cancelar el proceso de «run-parts» no cancela el script en ejecución, sino que este continua hasta su finalización. run-parts - Ejecuta scripts o programas en un directorio run-parts --list --regex \[aq]^p.*d$\[aq] /etc savelog - Guarda un archivo de registro de eventos Define umask con el valor I<umask> antes de ejecutar los scripts. I<umask> se debe especificar con un valor octal. El valor predeterminado de umask es 022. Similar a B<--verbose>, pero sólo muestra el nombre de los scripts que generan una salida. El nombre del script aparecerá por la salida que emplee, sea la salida estándar o la salida de error estándar. Define el final de las opciones. Todos los nombres de fichero a continuación de B<--> no se tomarán como opción, incluso si empiezan con un carácter de guión. tempfile - Crea un fichero temporal de forma segura Ejecuta «touch», creando un nuevo fichero de registro de eventos Usa I<directorio> en lugar del directorio actual para iterar ficheros Utiliza espacios de nombre LSB en lugar del comportamiento clásico. Utiliza la fecha estándar al iterar los ficheros Comprueba los nombres de fichero con una expresión regular extendida personalizada, I<expresión-regular>. Consulte la sección EJEMPLOS para ver uno. I<E<lt>númeroE<gt>> representa el número de versión, siendo cero el más reciente. Los números de versión E<gt> 0 se comprimen, a menos que B<-l> lo impida. El número de versión cero no se comprime, ya que puede que un proceso mantenga el I<fichero> abierto para la E/S. Sólo se preservan las versiones I<ciclo> del fichero. which - Busca una orden which [-a] nombre-de-fichero ... 
.class public Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;,
        Lcom/google/appinventor/components/runtime/util/NanoHTTPD$b;,
        Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    }
.end annotation


# static fields
.field public static final HTTP_BADREQUEST:Ljava/lang/String; = "400 Bad Request"

.field public static final HTTP_FORBIDDEN:Ljava/lang/String; = "403 Forbidden"

.field public static final HTTP_INTERNALERROR:Ljava/lang/String; = "500 Internal Server Error"

.field public static final HTTP_NOTFOUND:Ljava/lang/String; = "404 Not Found"

.field public static final HTTP_NOTIMPLEMENTED:Ljava/lang/String; = "501 Not Implemented"

.field public static final HTTP_NOTMODIFIED:Ljava/lang/String; = "304 Not Modified"

.field public static final HTTP_OK:Ljava/lang/String; = "200 OK"

.field public static final HTTP_PARTIALCONTENT:Ljava/lang/String; = "206 Partial Content"

.field public static final HTTP_RANGE_NOT_SATISFIABLE:Ljava/lang/String; = "416 Requested Range Not Satisfiable"

.field public static final HTTP_REDIRECT:Ljava/lang/String; = "301 Moved Permanently"

.field public static final MIME_DEFAULT_BINARY:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field public static final MIME_XML:Ljava/lang/String; = "text/xml"

.field private static final a:I = 0x40000

.field private static final a:Ljava/lang/String; = "AppInvHTTPD"

.field private static a:Ljava/text/SimpleDateFormat; = null

.field private static a:Ljava/util/Hashtable; = null

.field private static final b:Ljava/lang/String; = "Copyright (C) 2001,2005-2011 by Jarno Elonen <elonen@iki.fi>\nand Copyright (C) 2010 by Konstantinos Togias <info@ktogias.gr>\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS\'\' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."

.field private static c:I

.field protected static myErr:Ljava/io/PrintStream;

.field protected static myOut:Ljava/io/PrintStream;


# instance fields
.field private a:Ljava/io/File;

.field private a:Ljava/lang/Thread;

.field private final a:Ljava/net/ServerSocket;

.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1092
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/util/Hashtable;

    .line 1095
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "css            text/css htm            text/html html           text/html xml            text/xml txt            text/plain asc            text/plain gif            image/gif jpg            image/jpeg jpeg           image/jpeg png            image/png mp3            audio/mpeg m3u            audio/mpeg-url mp4            video/mp4 ogv            video/ogg flv            video/x-flv mov            video/quicktime swf            application/x-shockwave-flash js                     application/javascript pdf            application/pdf doc            application/msword ogg            application/x-ogg zip            application/octet-stream exe            application/octet-stream class          application/octet-stream "

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1120
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    sget-object v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/16 v0, 0x4000

    .line 1124
    sput v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->c:I

    .line 1127
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    .line 1128
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myErr:Ljava/io/PrintStream;

    .line 1136
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    .line 1137
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(ILjava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$b;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$b;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;)V

    const/4 v1, 0x2

    const/16 v2, 0xa

    const-wide/16 v3, 0x5

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 242
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->b:I

    .line 243
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/io/File;

    .line 244
    new-instance p1, Ljava/net/ServerSocket;

    iget p2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->b:I

    invoke-direct {p1, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/net/ServerSocket;

    .line 245
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/lang/Thread;

    const/4 p2, 0x1

    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 259
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 82
    sget v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->c:I

    return v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 864
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "/ "

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, ""

    .line 865
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 867
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 868
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v2, " "

    .line 870
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%20"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 874
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/net/ServerSocket;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic a()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 82
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    .line 282
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    const-string v1, "NanoHTTPD 1.25 (C) 2001,2005-2011 Jarno Elonen and (C) 2010 Konstantinos Togias\n(Command line options: [-p port] [-d root-dir] [--licence])\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    const/16 v1, 0x50

    const/4 v2, 0x0

    .line 290
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 291
    aget-object v3, p0, v2

    const-string v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 292
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 293
    :cond_0
    aget-object v3, p0, v2

    const-string v4, "-d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    new-instance v0, Ljava/io/File;

    add-int/lit8 v3, v2, 0x1

    aget-object v3, p0, v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 295
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "licence"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    sget-object p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    const-string v2, "Copyright (C) 2001,2005-2011 by Jarno Elonen <elonen@iki.fi>\nand Copyright (C) 2010 by Konstantinos Togias <info@ktogias.gr>\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS\'\' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_3
    :goto_2
    :try_start_0
    new-instance p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 307
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myErr:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t start server:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 308
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    .line 311
    :goto_3
    sget-object p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now serving files in port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    sget-object p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    const-string v0, "Hit Enter to stop.\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    :try_start_1
    sget-object p0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 5

    .line 106
    sget-object p6, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object p2

    .line 109
    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p6

    const-string v0, "\'"

    const-string v1, "\' = \'"

    if-eqz p6, :cond_0

    .line 111
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 112
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  HDR: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p3, p6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 112
    invoke-virtual {v2, p6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object p2

    .line 116
    :goto_1
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p6

    if-eqz p6, :cond_1

    .line 118
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 119
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  PRM: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p4, p6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 119
    invoke-virtual {v2, p6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {p5}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object p2

    .line 123
    :goto_2
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 125
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 126
    sget-object p6, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  UPLOADED: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p5, p4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 126
    invoke-virtual {p6, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 130
    :cond_2
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/io/File;

    const/4 p4, 0x1

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, ""

    .line 901
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const-string/jumbo v6, "text/plain"

    if-nez v4, :cond_0

    .line 902
    new-instance v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v7, "500 Internal Server Error"

    const-string v8, "INTERNAL ERRROR: serveFile(): given homeDir is not a directory."

    invoke-direct {v4, v0, v7, v6, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v7, 0x2f

    const-string v8, "403 Forbidden"

    const/4 v9, 0x0

    if-nez v4, :cond_3

    .line 908
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    sget-char v11, Ljava/io/File;->separatorChar:C

    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3f

    .line 909
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ltz v12, :cond_1

    .line 910
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_1
    const-string v11, ".."

    .line 913
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "../"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_4

    .line 914
    :cond_2
    new-instance v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v11, "FORBIDDEN: Won\'t serve ../ for security reasons."

    invoke-direct {v4, v0, v8, v6, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v10, p1

    .line 918
    :cond_4
    :goto_1
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez v4, :cond_5

    .line 919
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_5

    .line 920
    new-instance v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v12, "404 Not Found"

    const-string v13, "Error 404, file not found."

    invoke-direct {v4, v0, v12, v6, v13}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v12, "200 OK"

    const-string v13, "/"

    const/4 v14, 0x1

    if-nez v4, :cond_12

    .line 924
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 928
    invoke-virtual {v10, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    const-string v5, "\">"

    const-string/jumbo v7, "text/html"

    if-nez v15, :cond_6

    .line 930
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 931
    new-instance v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<html><body>Redirected: <a href=\""

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "</a></body></html>"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v15, "301 Moved Permanently"

    invoke-direct {v4, v0, v15, v7, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "Location"

    .line 934
    invoke-virtual {v4, v9, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-nez v4, :cond_11

    .line 940
    new-instance v9, Ljava/io/File;

    const-string v15, "index.html"

    invoke-direct {v9, v11, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 941
    new-instance v11, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/index.html"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 942
    :cond_7
    new-instance v9, Ljava/io/File;

    const-string v15, "index.htm"

    invoke-direct {v9, v11, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 943
    new-instance v11, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/index.htm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_8
    if-eqz p4, :cond_10

    .line 945
    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 947
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 948
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<html><body><h1>Directory "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "</h1><br/>"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 950
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v14, :cond_9

    .line 952
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v14

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v15, 0x2f

    .line 953
    invoke-virtual {v9, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    if-ltz v15, :cond_9

    .line 954
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v15, v9, :cond_9

    .line 955
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<b><a href=\""

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v15, v14

    const/4 v4, 0x0

    invoke-virtual {v10, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\">..</a></b><br/>"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_9
    if-eqz v2, :cond_f

    const/4 v15, 0x0

    .line 960
    :goto_2
    array-length v9, v2

    if-ge v15, v9, :cond_f

    .line 962
    new-instance v9, Ljava/io/File;

    aget-object v14, v2, v15

    invoke-direct {v9, v11, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 963
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v14

    move-object/from16 v17, v11

    if-eqz v14, :cond_a

    .line 966
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<b>"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 967
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v4

    aget-object v4, v2, v15

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v15

    move-object/from16 v4, p3

    .line 970
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<a href=\""

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v10

    aget-object v10, v2, v15

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v15

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</a>"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 974
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 976
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 977
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " &nbsp;<font size=2>("

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v20, 0x400

    cmp-long v11, v9, v20

    if-gez v11, :cond_b

    .line 979
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 p3, v2

    move-object/from16 v28, v5

    goto :goto_3

    :cond_b
    const-wide/16 v22, 0x64

    const-wide/16 v24, 0xa

    const-string v11, "."

    const-wide/32 v26, 0x100000

    cmp-long v28, v9, v26

    if-gez v28, :cond_c

    move-object/from16 p3, v2

    .line 981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v5

    div-long v4, v9, v20

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long v9, v9, v20

    div-long v9, v9, v24

    rem-long v9, v9, v22

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " KB"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_c
    move-object/from16 p3, v2

    move-object/from16 v28, v5

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v4, v9, v26

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long v9, v9, v26

    div-long v9, v9, v24

    rem-long v9, v9, v22

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " MB"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 985
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")</font>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_d
    move-object/from16 p3, v2

    move-object/from16 v28, v5

    .line 987
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<br/>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v14, :cond_e

    .line 988
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</b>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_e
    move-object v4, v2

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p3

    move-object/from16 v11, v17

    move-object/from16 v10, v19

    move-object/from16 v5, v28

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_f
    move-object/from16 v17, v11

    .line 991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</body></html>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 992
    new-instance v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    invoke-direct {v4, v0, v12, v7, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    move-object/from16 v17, v11

    .line 996
    new-instance v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v2, "FORBIDDEN: No directory listing."

    invoke-direct {v4, v0, v8, v6, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    move-object/from16 v17, v11

    goto :goto_6

    :cond_12
    move-object/from16 v17, v11

    :goto_5
    move-object/from16 v11, v17

    :goto_6
    if-nez v4, :cond_1b

    .line 1008
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_13

    .line 1010
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    goto :goto_7

    :cond_13
    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_14

    const-string v5, "application/octet-stream"

    .line 1015
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "range"

    .line 1020
    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    const-string v7, "bytes="

    .line 1023
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, 0x6

    .line 1025
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x2d

    .line 1026
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-lez v7, :cond_15

    const/4 v9, 0x0

    .line 1030
    :try_start_1
    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v16, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 1031
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_0
    :cond_15
    const-wide/16 v9, 0x0

    :catch_1
    const-wide/16 v16, -0x1

    .line 1039
    :goto_8
    :try_start_3
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v14
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v7, "ETag"

    if-eqz v4, :cond_19

    const-wide/16 v18, 0x0

    cmp-long v4, v9, v18

    if-ltz v4, :cond_19

    const-string v1, "Content-Range"

    cmp-long v4, v9, v14

    if-ltz v4, :cond_16

    .line 1044
    :try_start_4
    new-instance v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v5, "416 Requested Range Not Satisfiable"

    invoke-direct {v4, v0, v5, v6, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes 0-0/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v4, v7, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_a

    :cond_16
    const-wide/16 v18, 0x1

    const-wide/16 v20, 0x0

    cmp-long v4, v16, v20

    if-gez v4, :cond_17

    sub-long v16, v14, v18

    :cond_17
    move-object/from16 v22, v6

    move-object/from16 p1, v7

    move-wide/from16 v6, v16

    sub-long v16, v6, v9

    add-long v16, v16, v18

    cmp-long v4, v16, v20

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    if-gez v4, :cond_18

    move-wide/from16 v1, v20

    goto :goto_9

    :cond_18
    move-wide/from16 v1, v16

    .line 1056
    :goto_9
    :try_start_5
    new-instance v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$2;

    invoke-direct {v4, v0, v11, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$2;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/io/File;J)V

    .line 1059
    invoke-virtual {v4, v9, v10}, Ljava/io/FileInputStream;->skip(J)J

    .line 1061
    new-instance v11, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v12, "206 Partial Content"

    invoke-direct {v11, v0, v12, v5, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    const-string v4, "Content-Length"

    .line 1062
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v4, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v11, v2, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p1

    move-object/from16 v2, p3

    .line 1064
    invoke-virtual {v11, v4, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v11

    goto :goto_a

    :cond_19
    move-object/from16 v22, v6

    move-object v4, v7

    const-string v6, "if-none-match"

    .line 1069
    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1070
    new-instance v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v1, "304 Not Modified"

    invoke-direct {v4, v0, v1, v5, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1073
    :cond_1a
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0, v12, v5, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    const-string v5, "Content-Length"

    .line 1074
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v1, v4, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v4, v1

    goto :goto_a

    :catch_2
    move-object/from16 v22, v6

    .line 1082
    :catch_3
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v2, "FORBIDDEN: Reading file failed."

    move-object/from16 v3, v22

    invoke-direct {v1, v0, v8, v3, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1b
    :goto_a
    move-object v1, v4

    :goto_b
    const-string v2, "Accept-Ranges"

    const-string v3, "bytes"

    .line 1085
    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public stop()V
    .locals 1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

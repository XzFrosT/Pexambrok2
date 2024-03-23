.class Lcom/google/appinventor/components/runtime/HtmlParser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/HtmlParser;->CreateDocument(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/HtmlParser;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:[Lorg/jsoup/nodes/Document;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/HtmlParser;[Lorg/jsoup/nodes/Document;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HtmlParser$1;->a:Lcom/google/appinventor/components/runtime/HtmlParser;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/HtmlParser$1;->a:[Lorg/jsoup/nodes/Document;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/HtmlParser$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HtmlParser$1;->a:[Lorg/jsoup/nodes/Document;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HtmlParser$1;->a:Ljava/lang/String;

    invoke-static {v2}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v2

    invoke-interface {v2}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HtmlParser$1;->a:Lcom/google/appinventor/components/runtime/HtmlParser;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

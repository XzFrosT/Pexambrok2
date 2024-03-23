.class Lcom/google/appinventor/components/runtime/NiotronAirtable$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$9;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$9;->a:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$9;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$9;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 750
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$9;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$9;->a:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$9;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$9;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$9;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->GotCell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

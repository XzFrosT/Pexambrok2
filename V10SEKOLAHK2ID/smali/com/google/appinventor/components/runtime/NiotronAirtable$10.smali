.class Lcom/google/appinventor/components/runtime/NiotronAirtable$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->a:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->b:Ljava/util/List;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 812
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->a:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->a:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->GotColumn(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

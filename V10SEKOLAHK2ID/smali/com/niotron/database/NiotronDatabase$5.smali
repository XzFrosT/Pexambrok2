.class Lcom/niotron/database/NiotronDatabase$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/niotron/niotrondatabase/NiotronDB$OnDeleteRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/niotron/database/NiotronDatabase;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/niotron/database/NiotronDatabase;


# direct methods
.method constructor <init>(Lcom/niotron/database/NiotronDatabase;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/niotron/database/NiotronDatabase$5;->a:Lcom/niotron/database/NiotronDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase$5;->a:Lcom/niotron/database/NiotronDatabase;

    invoke-virtual {v0, p1}, Lcom/niotron/database/NiotronDatabase;->OnErrorDeletingRecord(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase$5;->a:Lcom/niotron/database/NiotronDatabase;

    invoke-virtual {v0, p1}, Lcom/niotron/database/NiotronDatabase;->OnDeletedRecord(Ljava/lang/String;)V

    return-void
.end method

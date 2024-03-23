.class Lcom/google/appinventor/components/runtime/Sound$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Sound$a;->setOnloadCompleteListener(Landroid/media/SoundPool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Sound$a;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Sound$a;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound$a$1;->a:Lcom/google/appinventor/components/runtime/Sound$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound$a$1;->a:Lcom/google/appinventor/components/runtime/Sound$a;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Sound$a;->a:Lcom/google/appinventor/components/runtime/Sound;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Sound;->a(Lcom/google/appinventor/components/runtime/Sound;Z)Z

    return-void
.end method

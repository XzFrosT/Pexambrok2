.class Lcom/google/appinventor/components/runtime/Sound$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Sound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/Sound;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/Sound;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound$a;->a:Lcom/google/appinventor/components/runtime/Sound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/Sound;Lcom/google/appinventor/components/runtime/Sound$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sound$a;-><init>(Lcom/google/appinventor/components/runtime/Sound;)V

    return-void
.end method


# virtual methods
.method public setOnloadCompleteListener(Landroid/media/SoundPool;)V
    .locals 1

    .line 86
    new-instance v0, Lcom/google/appinventor/components/runtime/Sound$a$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Sound$a$1;-><init>(Lcom/google/appinventor/components/runtime/Sound$a;)V

    invoke-virtual {p1, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.class Lcom/google/appinventor/components/runtime/FirebaseAuthentication$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->LinkWithGithub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$4;->a:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$4;->a:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->GithubLinkFailed(Ljava/lang/String;)V

    return-void
.end method

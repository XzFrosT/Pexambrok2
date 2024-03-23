.class abstract Lcom/google/appinventor/components/runtime/FirebaseDB$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# instance fields
.field final b:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

.field final b:Ljava/lang/Object;

.field final c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$a;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$b;->b:Ljava/lang/Object;

    .line 96
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$b;->c:Ljava/lang/Object;

    .line 97
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$b;->b:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    return-void
.end method


# virtual methods
.method abstract a(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
.end method

.method a()Lcom/google/appinventor/components/runtime/FirebaseDB$a;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$b;->b:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    return-object v0
.end method

.class public final Lcom/google/appinventor/components/runtime/FirebaseAuthentication;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "FirebaseAuth lets you Secure your Firebase Database and Authenticate Users viaEmail, Phone, Google, Github, etc."
    iconName = "images/firebaseAuth.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "firebase-auth-19.3.0.aar, firebase-auth-19.3.0.jar,  firebase-auth-interop-19.0.0.aar, firebase-auth-interop-19.0.0.jar,  play-services-auth.jar, play-services-auth.aar, play-services-auth-base.aar, play-services-auth-base.jar"
.end annotation


# instance fields
.field private a:I

.field private a:Landroid/app/Activity;

.field private a:Landroid/content/Context;

.field private a:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:I

    .line 57
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/content/Context;

    .line 58
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method private a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    .line 599
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/firebase/auth/GoogleAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    .line 600
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$16;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$16;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 601
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public AnonymousSignInFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Anonymous Sign In Failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AnonymousSignInFailed"

    .line 784
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AnonymousSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Anonymous Sign In Successful"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnonymousSignInSuccessful"

    .line 779
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CreatePhoneAuthCredential(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Creates a Phone Auth Credential to SignIn With Phone"
    .end annotation

    .line 165
    invoke-static {p1, p2}, Lcom/google/firebase/auth/PhoneAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p1

    return-object p1
.end method

.method public EmailSignInFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event Called when Email SignIn is failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "EmailSignInFailed"

    .line 664
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public EmailSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event Called when Email SignIn is Successful"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "EmailSignInSuccessful"

    .line 659
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public EmailSignUpFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event Called when Email SignUp is failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "EmailSignUpFailed"

    .line 654
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public EmailSignUpSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event Called when Email SignUp is Successful"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "EmailSignUpSuccessful"

    .line 649
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Something went wrong in Firebase Auth"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 789
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FailedToInitialize(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failed to Initialized Firebase Auth Component"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FailedToInitialize"

    .line 77
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetPhotoUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the PhotoUrl of the User. Only if a Picture is Uploaded"
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 549
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1

    .line 552
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUserAuthToken(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the UserAuthToken. \n Parameters: forceRefresh: boolean\nForce refresh regardless of token expiration."
    .end annotation

    .line 485
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez p1, :cond_0

    const-string p1, "FirebaseAuth is not Initialized"

    .line 486
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 489
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Firebase User is null"

    .line 491
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 495
    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/FirebaseUser;->getIdToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$15;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$15;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 496
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public GetUserEmail()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the email of the User"
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 525
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1

    .line 528
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUserName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the UserName of the User"
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 537
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1

    .line 540
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUserPhoneNumber()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Phone Number of the User"
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 561
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1

    .line 564
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUserUid()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the UserId of the User. Useful for storing the data of the user"
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 513
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1

    .line 516
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GithubLinkFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Github Link Failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GithubLinkFailed"

    .line 704
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GithubLinkSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Github Link Successful"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GithubLinkSuccessful"

    .line 699
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GithubSignInFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Github Sign In Failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GithubSignInFailed"

    .line 694
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GithubSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Github Sign In Successful"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GithubSignInSuccessful"

    .line 689
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GoogleLogin(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Attempts a login with google"
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string p1, "FirebaseAuth is not Initialized"

    .line 573
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 576
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 577
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    .line 579
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    .line 580
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 581
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    .line 582
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:I

    .line 583
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/app/Activity;

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public GoogleSignInFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sign in with google failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GoogleSignInFailed"

    .line 643
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GoogleSignInSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sign in with google succeed"
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 638
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    const-string p1, "GoogleSignInSuccess"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializeFirebaseAuth(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the Firebase Auth Component"
    .end annotation

    .line 63
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/FirebaseCore;

    if-eqz v0, :cond_1

    .line 64
    check-cast p1, Lcom/google/appinventor/components/runtime/FirebaseCore;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseCore;->getFirebaseAppInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Firebase Core Component failed to Initialize"

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->FailedToInitialize(Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;-><init>(Lcom/google/firebase/FirebaseApp;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    goto :goto_0

    :cond_1
    const-string p1, "Invalid Firebase Core Component"

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->FailedToInitialize(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public IsUserSignedIn()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks if any user is logged in"
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public LinkWithGithub()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Link a Github account with the user to enable them to login withGithub later. This will link Github with the existing account"
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 305
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 309
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, "github.com"

    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseUser;->startActivityForLinkWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$5;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$5;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 313
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$4;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 319
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_1
    const-string v0, "Cannot Link without an existing User"

    .line 326
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->GithubLinkFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public LinkWithMicrosoft()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Link a Microsoft account with the user to enable them to login withMicrosoft later. This will link Microsoft with the existing account"
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 370
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 374
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, "microsoft.com"

    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseUser;->startActivityForLinkWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$9;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$9;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 378
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$8;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$8;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 384
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_1
    const-string v0, "Cannot Link without an existing User"

    .line 391
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->MicrosoftLinkFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public LinkWithTwitter()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Link a twitter account with the user to enable them to login withtwitter later. This will link twitter with the existing account"
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 240
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 244
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const-string/jumbo v1, "twitter.com"

    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseUser;->startActivityForLinkWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$23;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$23;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 248
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$22;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$22;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 254
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_1
    const-string v0, "Cannot Link without an existing User"

    .line 261
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->TwitterLinkFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public LinkWithYahoo()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Link a Yahoo account with the user to enable them to login withYahoo later. This will link Yahoo with the existing account"
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 435
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 439
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const-string/jumbo v1, "yahoo.com"

    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseUser;->startActivityForLinkWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$14;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$14;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 443
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$13;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$13;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 449
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_1
    const-string v0, "Cannot Link without an existing User"

    .line 456
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->YahooLinkFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public MicrosoftLinkFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Microsoft Link Failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MicrosoftLinkFailed"

    .line 724
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MicrosoftLinkSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Microsoft Link Successful"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MicrosoftLinkSuccessful"

    .line 719
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MicrosoftSignInFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Microsoft Sign In Failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MicrosoftSignInFailed"

    .line 714
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MicrosoftSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Microsoft Sign In Successful"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MicrosoftSignInSuccessful"

    .line 709
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PhoneSignInFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Phone Sign In Failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PhoneSignInFailed"

    .line 774
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PhoneSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Phone Sign In Successful"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PhoneSignInSuccessful"

    .line 769
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SendSMSVerification(Ljava/lang/String;I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sends a Verification Code to the Users Phone Number. Input: phoneNumber and timeout. timeout should be in seconds and a new sms can be sent only after the specified time."
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string p1, "FirebaseAuth is not Initialized"

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    new-instance v6, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$17;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$17;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/PhoneAuthProvider;->getInstance(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/PhoneAuthProvider;

    move-result-object v0

    int-to-long v2, p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/app/Activity;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)V

    return-void
.end method

.method public SignInAnonymously()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign in Anonymously to Access Secured Functions without an Account"
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 198
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->signInAnonymously()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$19;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$19;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SignInWithEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "SignIn with Email and Password using FirebaseAuth"
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string p1, "FirebaseAuth is not Initialized"

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$12;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$12;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SignInWithGithub()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign in Using Github"
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 282
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "github.com"

    .line 285
    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseAuth;->startActivityForSignInWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$3;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 287
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$2;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 293
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SignInWithMicrosoft()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign in Using Microsoft"
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 347
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "microsoft.com"

    .line 350
    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseAuth;->startActivityForSignInWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$7;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$7;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 352
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$6;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$6;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 358
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SignInWithPhone(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign In With Phone Number. Pass the Phone Auth Credentials received from the SMS verified Event."
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string p1, "FirebaseAuth is not Initialized"

    .line 171
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz v1, :cond_1

    .line 175
    check-cast p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$18;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$18;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 176
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_1
    const-string p1, "SignInWithPhone requires Phone Auth Credentials as the input"

    .line 191
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public SignInWithTwitter()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign in Using Twitter"
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 217
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "twitter.com"

    .line 220
    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseAuth;->startActivityForSignInWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$21;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$21;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 222
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$20;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$20;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 228
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SignInWithYahoo()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign in Using Yahoo"
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 412
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "yahoo.com"

    .line 415
    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseAuth;->startActivityForSignInWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$11;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$11;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 417
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$10;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$10;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 423
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SignOut()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "SignOut a User"
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    :cond_0
    return-void
.end method

.method public SignUpWithEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "SignUp with Email and Password using FirebaseAuth"
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string p1, "FirebaseAuth is not Initialized"

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V

    .line 88
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SmsVerificationFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Verification Sms Failed to Sent"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SmsVerificationFailed"

    .line 759
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SmsVerified(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sms Verified"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SmsVerified"

    .line 749
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TwitterLinkFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Twitter Link Failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TwitterLinkFailed"

    .line 684
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TwitterLinkSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Twitter Link Successful"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TwitterLinkSuccessful"

    .line 679
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TwitterSignInFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Twitter Sign In Failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TwitterSignInFailed"

    .line 674
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TwitterSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Twitter Sign In Successful"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TwitterSignInSuccessful"

    .line 669
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UnlinkGithub()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unlinks account signed in with github"
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 333
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 336
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, "github.com"

    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseUser;->unlink(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_1
    const-string v0, "Cannot Unlink without an existing user"

    .line 340
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public UnlinkMicrosoft()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unlinks the account signed in with microsoft"
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 398
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 401
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, "microsoft.com"

    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseUser;->unlink(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_1
    const-string v0, "Cannot Unlink without an existing user"

    .line 405
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public UnlinkTwitter()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unlinks the signed in accout with twitter"
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 268
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 271
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const-string/jumbo v1, "twitter.com"

    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseUser;->unlink(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_1
    const-string v0, "Cannot Unlink without an existing user"

    .line 275
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public UnlinkYahoo()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unlinks the account signed in with yahoo"
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    const-string v0, "FirebaseAuth is not Initialized"

    .line 463
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 466
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const-string/jumbo v1, "yahoo.com"

    invoke-static {v1, v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseUser;->unlink(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_1
    const-string v0, "Cannot Unlink without an existing user"

    .line 470
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public UserAuthTokenError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User auth token fetching error"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "UserAuthTokenError"

    .line 633
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UserAuthTokenReceived(Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User auth token received"
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 628
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const/4 p1, 0x4

    aput-object p8, v0, p1

    const-string p1, "UserAuthTokenReceived"

    .line 627
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public VerificationSmsSent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Verification Sms Sent"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "VerificationSmsSent"

    .line 754
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public VerificationSmsTimedOut()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Verification Sms Timed Out"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VerificationSmsTimedOut"

    .line 764
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public YahooLinkFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Yahoo Link Failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "YahooLinkFailed"

    .line 744
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public YahooLinkSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Yahoo Link Successful"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "YahooLinkSuccessful"

    .line 739
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public YahooSignInFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Yahoo Sign In Failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "YahooSignInFailed"

    .line 734
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public YahooSignInSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Yahoo Sign In Successful"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "YahooSignInSuccessful"

    .line 729
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 0

    .line 587
    iget p2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a:I

    if-ne p1, p2, :cond_0

    .line 588
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 590
    :try_start_0
    const-class p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 591
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Google sign in failed"

    .line 593
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->GoogleSignInFailed(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

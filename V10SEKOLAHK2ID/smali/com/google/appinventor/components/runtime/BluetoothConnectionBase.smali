.class public abstract Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private a:B

.field private final a:I

.field private a:Ljava/io/InputStream;

.field private a:Ljava/io/OutputStream;

.field private a:Ljava/lang/Object;

.field private a:Ljava/lang/String;

.field private a:Ljava/nio/ByteOrder;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/a;",
            ">;"
        }
    .end annotation
.end field

.field protected disconnectOnError:Z

.field protected final logTag:Ljava/lang/String;

.field protected secure:Z


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)V

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/util/List;

    .line 69
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    .line 70
    iput p3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:I

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->HighByteFirst(Z)V

    const-string p2, "UTF-8"

    .line 74
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->CharacterEncoding(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->DelimiterByte(I)V

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Secure(Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 3

    const/4 v0, 0x0

    .line 83
    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x7

    invoke-direct {p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)V

    const-string v0, "Not Null"

    .line 84
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/io/OutputStream;

    .line 86
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/io/InputStream;

    return-void
.end method

.method private a()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/a;

    .line 109
    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/a;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/a;

    .line 115
    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/a;->beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is available on the device"
    .end annotation

    .line 144
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public BluetoothError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The BluetoothError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    return-void
.end method

.method public BytesAvailableToReceive()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an estimate of the number of bytes that can be received without blocking"
    .end annotation

    .line 566
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BytesAvailableToReceive"

    if-nez v0, :cond_0

    const/16 v0, 0x203

    new-array v3, v1, [Ljava/lang/Object;

    .line 567
    invoke-virtual {p0, v2, v0, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1

    .line 573
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 575
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO Exception during Getting Receive Availability "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v3, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    :cond_1
    const/16 v3, 0x205

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 580
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 579
    invoke-virtual {p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return v1
.end method

.method public CharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/String;

    return-object v0
.end method

.method public CharacterEncoding(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "UTF-8"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    :try_start_0
    const-string v0, "check"

    .line 279
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 280
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "CharacterEncoding"

    .line 282
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public DelimiterByte()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 325
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:B

    return v0
.end method

.method public DelimiterByte(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    int-to-byte v0, p1

    shr-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/16 v0, 0x1ff

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "DelimiterByte"

    .line 311
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 315
    :cond_0
    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:B

    return-void
.end method

.method public final Disconnect()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Disconnect from the connected Bluetooth device."
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->b()V

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->closeBluetoothSocket(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    const-string v2, "Disconnected from Bluetooth device."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while disconnecting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/Object;

    .line 192
    :cond_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/io/InputStream;

    .line 193
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/io/OutputStream;

    return-void
.end method

.method protected DisconnectOnError()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    return v0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is enabled"
    .end annotation

    .line 159
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public HighByteFirst(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-eqz p1, :cond_0

    .line 267
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/nio/ByteOrder;

    return-void
.end method

.method public HighByteFirst()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Initialize()V
    .locals 0

    return-void
.end method

.method public final IsConnected()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "On devices with API level 14 (LEVEL_ICE_CREAM_SANDWICH) or higher, this property returned is accurate. But on old devices with API level lower than 14, it may not return the current state of connection(e.g., it might be disconnected but you may not know until you attempt to read/write the socket."
    .end annotation

    .line 205
    iget v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothSocketConnected(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public ReceiveSigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 1-byte number from the connected Bluetooth device."
    .end annotation

    const-string v0, "ReceiveSigned1ByteNumber"

    const/4 v1, 0x1

    .line 616
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 617
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    return v3

    .line 621
    :cond_0
    aget-byte v0, v0, v3

    return v0
.end method

.method public ReceiveSigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 2-byte number from the connected Bluetooth device."
    .end annotation

    const-string v0, "ReceiveSigned2ByteNumber"

    const/4 v1, 0x2

    .line 644
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 645
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    return v3

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 650
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v3

    :goto_0
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0

    .line 652
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v4

    goto :goto_0
.end method

.method public ReceiveSigned4ByteNumber()J
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 4-byte number from the connected Bluetooth device."
    .end annotation

    const-string v0, "ReceiveSigned4ByteNumber"

    const/4 v1, 0x4

    .line 680
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 681
    array-length v2, v0

    if-eq v2, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_1

    .line 686
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v0, v0, v6

    :goto_0
    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 691
    :cond_1
    aget-byte v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v0, v0, v3

    goto :goto_0
.end method

.method public ReceiveSignedBytes(I)Ljava/util/List;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple signed byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "ReceiveSignedBytes"

    .line 736
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object p1

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 738
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 739
    aget-byte v2, p1, v1

    .line 740
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public ReceiveText(I)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive text from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    const-string v0, "ReceiveText"

    .line 596
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    if-gez p1, :cond_0

    .line 600
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object p1

    .line 602
    :cond_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 605
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedEncodingException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public ReceiveUnsigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive an unsigned 1-byte number from the connected Bluetooth device."
    .end annotation

    const-string v0, "ReceiveUnsigned1ByteNumber"

    const/4 v1, 0x1

    .line 630
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 631
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    return v3

    .line 635
    :cond_0
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public ReceiveUnsigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 2-byte number from the connected Bluetooth device."
    .end annotation

    const-string v0, "ReceiveUnsigned2ByteNumber"

    const/4 v1, 0x2

    .line 662
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 663
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    return v3

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 668
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v3

    :goto_0
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0

    .line 670
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v4

    goto :goto_0
.end method

.method public ReceiveUnsigned4ByteNumber()J
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 4-byte number from the connected Bluetooth device."
    .end annotation

    const-string v0, "ReceiveUnsigned4ByteNumber"

    const/4 v1, 0x4

    .line 704
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 705
    array-length v2, v0

    if-eq v2, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x18

    const/4 v4, 0x3

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0xff

    if-ne v1, v2, :cond_1

    .line 710
    aget-byte v1, v0, v4

    int-to-long v1, v1

    and-long/2addr v1, v10

    aget-byte v4, v0, v6

    int-to-long v12, v4

    and-long/2addr v12, v10

    shl-long v6, v12, v7

    or-long/2addr v1, v6

    aget-byte v4, v0, v8

    int-to-long v6, v4

    and-long/2addr v6, v10

    shl-long v4, v6, v5

    or-long/2addr v1, v4

    aget-byte v0, v0, v9

    :goto_0
    int-to-long v4, v0

    and-long/2addr v4, v10

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    return-wide v1

    .line 715
    :cond_1
    aget-byte v1, v0, v9

    int-to-long v1, v1

    and-long/2addr v1, v10

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v10

    shl-long v7, v8, v7

    or-long/2addr v1, v7

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v10

    shl-long v5, v6, v5

    or-long/2addr v1, v5

    aget-byte v0, v0, v4

    goto :goto_0
.end method

.method public ReceiveUnsignedBytes(I)Ljava/util/List;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple unsigned byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "ReceiveUnsignedBytes"

    .line 759
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object p1

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 761
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 762
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 763
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public Secure(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 240
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    return-void
.end method

.method public Secure()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to invoke SSP (Simple Secure Pairing), which is supported on devices with Bluetooth v2.1 or higher. When working with embedded Bluetooth devices, this property may need to be set to False. For Android 2.0-2.2, this property setting will be ignored."
    .end annotation

    .line 228
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    return v0
.end method

.method public Send1ByteNumber(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 1-byte number to the connected Bluetooth device."
    .end annotation

    const-string v0, "Send1ByteNumber"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 364
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-byte v4, v3

    shr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    const/16 v3, 0x1ff

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 373
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 377
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;B)V

    return-void

    :catch_0
    const/16 v3, 0x1fe

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 366
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public Send2ByteNumber(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 2-byte number to the connected Bluetooth device."
    .end annotation

    const-string v0, "Send2ByteNumber"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 395
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    new-array v5, v4, [B

    .line 402
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/nio/ByteOrder;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v6, v7, :cond_0

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    goto :goto_0

    :cond_0
    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    :goto_0
    shr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    const/16 v3, 0x200

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 414
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    .line 413
    invoke-virtual {p0, v0, v3, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 417
    :cond_1
    invoke-virtual {p0, v0, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void

    :catch_0
    const/16 v3, 0x1fe

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 397
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public Send4ByteNumber(Ljava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 4-byte number to the connected Bluetooth device."
    .end annotation

    const-string v0, "Send4ByteNumber"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 435
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    new-array v6, v5, [B

    .line 442
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/nio/ByteOrder;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0x8

    const-wide/16 v12, 0xff

    if-ne v7, v8, :cond_0

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v9

    shr-long/2addr v3, v11

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v10

    shr-long/2addr v3, v11

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v2

    shr-long/2addr v3, v11

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v1

    goto :goto_0

    :cond_0
    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v1

    shr-long/2addr v3, v11

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v2

    shr-long/2addr v3, v11

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v10

    shr-long/2addr v3, v11

    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v9

    :goto_0
    shr-long/2addr v3, v11

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-eqz v9, :cond_1

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-eqz v9, :cond_1

    const/16 v3, 0x200

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 462
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    .line 461
    invoke-virtual {p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 465
    :cond_1
    invoke-virtual {p0, v0, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void

    :catch_0
    const/16 v3, 0x1fe

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 437
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public SendBytes(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a list of byte values to the connected Bluetooth device."
    .end annotation

    .line 481
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 482
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 483
    :goto_0
    array-length v3, p1

    const-string v4, "SendBytes"

    if-ge v2, v3, :cond_1

    .line 486
    aget-object v3, p1, v2

    .line 487
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    .line 490
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    .line 496
    aput-byte v6, v0, v2

    shr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    const/16 p1, 0x202

    new-array v0, v5, [Ljava/lang/Object;

    add-int/2addr v2, v5

    .line 500
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 499
    invoke-virtual {p0, v4, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const/16 p1, 0x201

    new-array v0, v5, [Ljava/lang/Object;

    add-int/2addr v2, v5

    .line 493
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 492
    invoke-virtual {p0, v4, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 504
    :cond_1
    invoke-virtual {p0, v4, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void
.end method

.method public SendText(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send text to the connected Bluetooth device."
    .end annotation

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 339
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedEncodingException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    :goto_0
    const-string v0, "SendText"

    .line 342
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void
.end method

.method a(Lcom/google/appinventor/components/runtime/a;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lcom/google/appinventor/components/runtime/a;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected varargs bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 851
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->c()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 844
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->c()V

    return-void
.end method

.method protected final read(Ljava/lang/String;I)[B
    .locals 11

    .line 779
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p2, 0x203

    new-array v0, v1, [Ljava/lang/Object;

    .line 780
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    new-array p1, v1, [B

    return-object p1

    .line 785
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x206

    const/4 v3, 0x1

    const/16 v4, 0x205

    const/4 v5, -0x1

    const-string v6, "IO Exception during Reading "

    if-ltz p2, :cond_4

    .line 789
    new-array v7, p2, [B

    const/4 v8, 0x0

    :goto_0
    if-ge v8, p2, :cond_3

    .line 793
    :try_start_0
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/io/InputStream;

    sub-int v10, p2, v8

    invoke-virtual {v9, v7, v8, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-ne v9, v5, :cond_1

    new-array p2, v1, [Ljava/lang/Object;

    .line 795
    invoke-virtual {p0, p1, v2, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/2addr v8, v9

    goto :goto_0

    :catch_0
    move-exception p2

    .line 801
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v2, :cond_2

    .line 803
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    :cond_2
    new-array v2, v3, [Ljava/lang/Object;

    .line 806
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 805
    invoke-virtual {p0, p1, v4, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 810
    :cond_3
    :goto_1
    invoke-virtual {v0, v7, v1, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 815
    :cond_4
    :try_start_1
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    if-ne p2, v5, :cond_5

    new-array p2, v1, [Ljava/lang/Object;

    .line 817
    invoke-virtual {p0, p1, v2, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2

    .line 821
    :cond_5
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 822
    iget-byte v7, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p2, v7, :cond_4

    goto :goto_2

    :catch_1
    move-exception p2

    .line 826
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v2, :cond_6

    .line 828
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    :cond_6
    new-array v2, v3, [Ljava/lang/Object;

    .line 831
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 830
    invoke-virtual {p0, p1, v4, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 837
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected final setConnection(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/Object;

    .line 170
    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/Object;

    .line 171
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/io/InputStream;

    .line 172
    new-instance p1, Ljava/io/BufferedOutputStream;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/lang/Object;

    .line 173
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/io/OutputStream;

    .line 174
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a()V

    return-void
.end method

.method protected write(Ljava/lang/String;B)V
    .locals 4

    .line 514
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p2, 0x203

    new-array v0, v1, [Ljava/lang/Object;

    .line 515
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 521
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write(I)V

    .line 522
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 524
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Exception during Writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    :cond_1
    const/16 v0, 0x204

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 529
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 528
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected write(Ljava/lang/String;[B)V
    .locals 4

    .line 540
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p2, 0x203

    new-array v0, v1, [Ljava/lang/Object;

    .line 541
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 547
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 548
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->a:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 550
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Exception during Writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v0, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    :cond_1
    const/16 v0, 0x204

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 555
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 554
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

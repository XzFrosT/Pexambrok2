.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/PrintStream;


# direct methods
.method private constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/PrintStream;Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;-><init>(Ljava/io/PrintStream;)V

    return-void
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
    .locals 2

    .line 601
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result v0

    const-string v1, "fill"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;I)V

    .line 602
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillOpacity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "fill-opacity"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .locals 2

    .line 595
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v0

    const-string/jumbo v1, "stroke"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;I)V

    .line 596
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeOpacity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "stroke-opacity"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "stroke-width"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 587
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "draggable"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->EnableInfobox()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "infobox"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "visible"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"LineString\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 624
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/util/List;)V

    .line 625
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v0, "]}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 5

    .line 629
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"MultiPolygon\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 630
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 631
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    .line 633
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ","

    if-nez v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 636
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/util/List;)V

    .line 637
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 639
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 640
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/util/List;)V

    goto :goto_1

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 646
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v0, "]}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v1, "\"type\":\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 535
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 561
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v0, "\":\"&H"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 562
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    .line 563
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 566
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 567
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 540
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 541
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to serialize the value of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" as JSON"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeoJSONUtil"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 551
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 607
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(C)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->print(D)V

    .line 611
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->print(D)V

    .line 613
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(D)V

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lorg/osmdroid/util/GeoPoint;)V
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"Point\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(D)V

    .line 573
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->print(D)V

    .line 575
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(D)V

    .line 579
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v0, "]}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/osmdroid/util/GeoPoint;)Z
    .locals 4

    .line 756
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"Polygon\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 651
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/util/List;)V

    .line 652
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 654
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 655
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 658
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v0, "]}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",\"properties\":{\"$Type\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 2

    .line 662
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 663
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    goto :goto_0

    .line 665
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->b(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .line 717
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string/jumbo v0, "{"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p2, "Feature"

    .line 718
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;)V

    .line 719
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(C)V

    .line 720
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lorg/osmdroid/util/GeoPoint;)V

    .line 721
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->b(Ljava/lang/String;)V

    .line 722
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 723
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 724
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 725
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string/jumbo p2, "}}"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .line 690
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string/jumbo v0, "{"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p2, "Feature"

    .line 691
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;)V

    .line 692
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(C)V

    .line 693
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .line 694
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->b(Ljava/lang/String;)V

    .line 695
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 696
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 697
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string/jumbo p2, "}}"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .line 671
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string/jumbo v0, "{"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p2, "Feature"

    .line 672
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;)V

    .line 673
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(C)V

    .line 674
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lorg/osmdroid/util/GeoPoint;)V

    .line 675
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->b(Ljava/lang/String;)V

    .line 676
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 677
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 678
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 679
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorHorizontal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "anchorHorizontal"

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 680
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorVertical()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "anchorVertical"

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "height"

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object p2

    const-string v0, "image"

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "width"

    invoke-direct {p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string/jumbo p2, "}}"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .line 703
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string/jumbo v0, "{"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p2, "Feature"

    .line 704
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;)V

    .line 705
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(C)V

    .line 706
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->c(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 707
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->b(Ljava/lang/String;)V

    .line 708
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 709
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 710
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 711
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string/jumbo p2, "}}"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 6

    .line 731
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string/jumbo v0, "{"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p2, "Feature"

    .line 732
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;)V

    .line 733
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string v0, ",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":["

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 734
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "],"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 735
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 736
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 737
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 738
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->b(Ljava/lang/String;)V

    .line 740
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 741
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 742
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 743
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "NorthLatitude"

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 744
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "WestLongitude"

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "SouthLatitude"

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "EastLongitude"

    invoke-direct {p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 747
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->a:Ljava/io/PrintStream;

    const-string/jumbo p2, "}}"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

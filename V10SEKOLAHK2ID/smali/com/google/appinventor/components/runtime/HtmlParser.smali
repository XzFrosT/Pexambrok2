.class public final Lcom/google/appinventor/components/runtime/HtmlParser;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Html Parser Component Can be used to fetch/modify data in a Html code.Html Code can be entered Manually, loaded from an Url or from an Html File in the Assets Folder.There are a lot of Functions Available. Check the docs to find more info.Each Block\'s Function is also added in the description of each block."
    iconName = "images/htmlParser.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "jsoup.jar"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method


# virtual methods
.method public AppendElementToElement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new element by tag name, and add it as the last child."
    .end annotation

    .line 412
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 413
    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 415
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 416
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 417
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Requires an Element as input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 415
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public AppendHtmlToElement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add the supplied HTML to the end of the element\'s inner HTML."
    .end annotation

    .line 357
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 358
    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->append(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 360
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 361
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 362
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Requires an Element as input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public AppendTextToElement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create and append a new TextNode to this element."
    .end annotation

    .line 379
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 380
    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->appendText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 382
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 383
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 384
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Requires an Element as input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public CreateDocument(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a main document. This Serves as the base html source.\'input\' can either be a html or an url"
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/jsoup/nodes/Document;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "https"

    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "<"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    aput-object p1, v1, v3

    goto :goto_1

    .line 68
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HtmlParser;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, p1}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-static {v0, p1}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    aput-object p1, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array v0, v0, [Lorg/jsoup/nodes/Document;

    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/appinventor/components/runtime/HtmlParser$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/appinventor/components/runtime/HtmlParser$1;-><init>(Lcom/google/appinventor/components/runtime/HtmlParser;[Lorg/jsoup/nodes/Document;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    :goto_1
    aget-object p1, v1, v3

    return-object p1
.end method

.method public ElementHasAttribute(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks if any of the matched elements have this attribute defined. Returns boolean"
    .end annotation

    .line 205
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 206
    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 208
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 209
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    aget-object p2, p2, v1

    .line 210
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Requires an Element as input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Error parsing html"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 452
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetElementAttributeValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get an attribute value from the first matched element that has the attribute. Returns a String"
    .end annotation

    .line 218
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 219
    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 221
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 222
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 223
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Requires an Element as input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public GetElementById(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Find an element by ID, including or under this element. Get an element from Document"
    .end annotation

    .line 79
    instance-of v0, p2, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    .line 80
    check-cast p2, Lorg/jsoup/nodes/Document;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Document;->getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "GetElement Requires a Document as input"

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public GetElementChildAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get a child element of this element, by its 0-based index number. Returns an element"
    .end annotation

    .line 194
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 195
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Get Element Child at Requires an Element as input"

    .line 197
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public GetElementChildren(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get this element\'s child elements. Returns a YailList"
    .end annotation

    .line 183
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 184
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Get Element Children Requires an Element as input"

    .line 186
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 188
    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public GetElementClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the literal value of this element\'s \"class\" attribute, which may include multiple class names, space separated. (E.g. on <div class=\"header gray\"> returns, \"header gray\"). Returns a String"
    .end annotation

    .line 256
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 257
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 259
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 261
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Requires an Element as input"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public GetElementData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the combined data of this element. Data is e.g. the inside of a script tag. It returns contents of scripts, comments, CSS styles, etc. Returns a String"
    .end annotation

    .line 331
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 332
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->data()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 334
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 335
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 336
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Requires an Element as input"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public GetElementId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the id attribute of the element. Returns a String"
    .end annotation

    .line 242
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 243
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 247
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Requires an Element as input"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public GetElementInnerHtml(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the combined inner HTML of all matched elements. Returns a String"
    .end annotation

    .line 293
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 294
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 296
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 297
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 298
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Requires an Element as input"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public GetElementOuterHtml(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the combined outer HTML of all matched elements. Returns a String"
    .end annotation

    .line 306
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 307
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->outerHtml()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 309
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 310
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 311
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Requires an Element as input"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public GetElementTagName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the name of the tag for this element. E.g. div. If you are using case preserving parsing, this will return the source\'s original case. Returns a String"
    .end annotation

    .line 345
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 346
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 348
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 349
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 350
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Requires an Element as input"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public GetElementText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the combined text of all the matched elements. Returns a String"
    .end annotation

    .line 269
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 270
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 272
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 273
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 274
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Requires an Element as input"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public GetElementsByAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Find elements that have a named attribute set. Case insensitive. Returns a list of Elements as YailList. The Yailist contains an element"
    .end annotation

    .line 115
    instance-of v0, p2, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    .line 116
    check-cast p2, Lorg/jsoup/nodes/Document;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Document;->getElementsByAttribute(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "GetElement Requires a Document as input"

    .line 118
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 120
    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public GetElementsByClass(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Find elements that have this class, including or under this element. Case insensitive. Returns a list of Elements as YailList. The Yailist contains an element"
    .end annotation

    .line 103
    instance-of v0, p2, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    .line 104
    check-cast p2, Lorg/jsoup/nodes/Document;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Document;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "GetElement Requires a Document as input"

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 108
    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public GetElementsByTag(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Finds elements, including and recursively under this element, with the specified tag name. Returns a list of Elements as YailList. The Yailist contains an element"
    .end annotation

    .line 91
    instance-of v0, p2, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    .line 92
    check-cast p2, Lorg/jsoup/nodes/Document;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "GetElement Requires a Document as input"

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 96
    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public GetFirstElementSibling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the first element sibling of the element. Returns an element"
    .end annotation

    .line 139
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->firstElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Get First Sibling Element Requires an Element as input"

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public GetLastElementSibling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the last element sibling of the element. Returns an element"
    .end annotation

    .line 150
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 151
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->lastElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Get Last Sibling Element Requires an Element as input"

    .line 153
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public GetNextElementSibling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the next element sibling of the element. Returns an element"
    .end annotation

    .line 161
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 162
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->nextElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Get Next Sibling Element Requires an Element as input"

    .line 164
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public GetPreviousElementSibling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the previous element sibling of the element. Returns an element"
    .end annotation

    .line 172
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 173
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->previousElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Get Previous Sibling Element Requires an Element as input"

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public GetSiblingElements(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get sibling elements. If the element has no sibling elements, returns an empty list. An element is not a sibling of itself, so will not be included in the returned list. Returns a list of Elements as YailList. The Yailist contains an element"
    .end annotation

    .line 128
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 129
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->siblingElements()Lorg/jsoup/select/Elements;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Get Sibling Elements Requires an Element as input"

    .line 131
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 133
    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public PrependElementToElement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new element by tag name, and add it as the first child."
    .end annotation

    .line 423
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 424
    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->prependElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 426
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 427
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 428
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Requires an Element as input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public PrependHtmlToElement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add the supplied HTML to the start of the element\'s inner HTML."
    .end annotation

    .line 368
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 369
    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->prepend(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 371
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 372
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 373
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Requires an Element as input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public PrependTextToElement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create and prepend a new TextNode to this element."
    .end annotation

    .line 390
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 391
    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->prependText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 393
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 394
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 395
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Requires an Element as input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public SelectElementByQuery(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Find elements that match the Selector CSS query, with this element as the starting context. Matched elements may include this element, or any of its children. \'source\' should be a document, element or elements"
    .end annotation

    .line 436
    instance-of v0, p2, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    .line 437
    check-cast p2, Lorg/jsoup/nodes/Document;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    goto :goto_0

    .line 438
    :cond_0
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_1

    .line 439
    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    goto :goto_0

    .line 440
    :cond_1
    instance-of v0, p2, Lorg/jsoup/select/Elements;

    if-eqz v0, :cond_2

    .line 441
    check-cast p2, Lorg/jsoup/select/Elements;

    invoke-virtual {p2, p1}, Lorg/jsoup/select/Elements;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    goto :goto_0

    .line 443
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 444
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 445
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Requires a Document, Element or Elements as input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 443
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public SetElementAttributeValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set an attribute on all matched elements."
    .end annotation

    .line 230
    instance-of v0, p3, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 231
    check-cast p3, Lorg/jsoup/nodes/Element;

    invoke-virtual {p3, p1, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 234
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 p3, 0x0

    aget-object p2, p2, p3

    .line 235
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Requires an Element as input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public SetElementInnerHtml(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the inner HTML of each matched element."
    .end annotation

    .line 318
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 319
    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 321
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 322
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 323
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Requires an Element as input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public SetElementText(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the Text of and Element"
    .end annotation

    .line 281
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 282
    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 284
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 285
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 286
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Requires an Element as input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public WrapHtmlToElement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create and prepend a new TextNode to this element."
    .end annotation

    .line 401
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 402
    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 404
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 405
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 406
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Requires an Element as input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 404
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/HtmlParser;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

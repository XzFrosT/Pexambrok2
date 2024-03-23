.class public Lcom/google/appinventor/components/runtime/PhoneNumberPicker;
.super Lcom/google/appinventor/components/runtime/ContactPicker;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A button that, when clicked on, displays a list of the contacts\' phone numbers to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul>\n<li> <code>ContactName</code>: the contact\'s name </li>\n <li> <code>PhoneNumber</code>: the contact\'s phone number </li>\n <li> <code>EmailAddress</code>: the contact\'s email address </li> <li> <code>Picture</code>: the name of the file containing the contact\'s image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul>\n</p><p>Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).</p>\n<p>The PhoneNumberPicker component may not work on all Android devices. For example, on Android systems before system 3.0, the returned lists of phone numbers and email addresses will be empty.\n"
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final a:Ljava/lang/String; = "PhoneNumberPicker"

.field private static a:[Ljava/lang/String; = null

.field private static final b:I = 0x1

.field private static b:[Ljava/lang/String; = null

.field private static final c:I = 0x2

.field private static final c:[Ljava/lang/String;

.field private static final d:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    .line 75
    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 93
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public postHoneycombGetContactEmailsAndPhones(Landroid/database/Cursor;)V
    .locals 10

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneIndex(Landroid/database/Cursor;)I

    move-result v2

    .line 218
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailIndex(Landroid/database/Cursor;)I

    move-result v3

    .line 219
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getMimeIndex(Landroid/database/Cursor;)I

    move-result v4

    .line 221
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneType()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailType()Ljava/lang/String;

    move-result-object v6

    .line 225
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_2

    .line 226
    invoke-virtual {p0, p1, v4}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    .line 227
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 228
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_0
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 230
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Type mismatch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " or "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ContactPicker"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 238
    :cond_2
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumberList:Ljava/util/List;

    .line 239
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    .line 240
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 241
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string p1, ""

    .line 243
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    :cond_4
    :goto_2
    return-void
.end method

.method public postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    .line 196
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getContactIdIndex(Landroid/database/Cursor;)I

    move-result v0

    .line 198
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getNameIndex(Landroid/database/Cursor;)I

    move-result v1

    .line 199
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getThumbnailIndex(Landroid/database/Cursor;)I

    move-result v2

    .line 200
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneIndex(Landroid/database/Cursor;)I

    move-result v3

    .line 201
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    .line 202
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    .line 204
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public preHoneycombGetContactInfo(Landroid/database/Cursor;)V
    .locals 4

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    const/4 v0, 0x2

    .line 182
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 183
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    const/4 v0, 0x3

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->getEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 7

    .line 122
    iget v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->requestCode:I

    if-ne p1, v0, :cond_7

    const/4 p1, -0x1

    if-ne p2, p1, :cond_7

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "received intent is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhoneNumberPicker"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 127
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result p1

    const/16 p3, 0xc

    if-lt p1, p3, :cond_0

    const-string p1, "//com.android.contacts/data"

    goto :goto_0

    :cond_0
    const-string p1, "//contacts/phones"

    .line 133
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 137
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, p3, :cond_1

    .line 138
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getNameProjection()[Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->a:[Ljava/lang/String;

    .line 139
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataProjection()[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->b:[Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->b:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->postHoneycombGetContactEmailsAndPhones(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 147
    :cond_1
    :try_start_2
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->preHoneycombGetContactInfo(Landroid/database/Cursor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move-object v6, p3

    move-object p3, p1

    move-object p1, v6

    .line 152
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contact name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phone number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emailAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contactPhotoUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_2

    .line 163
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz p3, :cond_6

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v6, p3

    move-object p3, p1

    move-object p1, v6

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v6, p3

    move-object p3, p1

    move-object p1, v6

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object p3, p1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p3, p1

    :goto_2
    :try_start_5
    const-string v1, "Exception in resultReturned"

    .line 159
    invoke-static {p2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p2, 0x453

    .line 160
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->puntContactSelection(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p1, :cond_3

    .line 163
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz p3, :cond_6

    .line 166
    :goto_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_2
    move-exception p2

    :goto_4
    if-eqz p1, :cond_4

    .line 163
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz p3, :cond_5

    .line 166
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_5
    throw p2

    .line 170
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->AfterPicking()V

    :cond_7
    return-void
.end method

.class public final Landroidx/coordinatorlayout/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CoordinatorLayout:[I

.field public static final CoordinatorLayout_Layout:[I

.field public static final CoordinatorLayout_Layout_android_layout_gravity:I = 0x0

.field public static final CoordinatorLayout_Layout_layout_anchor:I = 0x1

.field public static final CoordinatorLayout_Layout_layout_anchorGravity:I = 0x2

.field public static final CoordinatorLayout_Layout_layout_behavior:I = 0x3

.field public static final CoordinatorLayout_Layout_layout_dodgeInsetEdges:I = 0x4

.field public static final CoordinatorLayout_Layout_layout_insetEdge:I = 0x5

.field public static final CoordinatorLayout_Layout_layout_keyline:I = 0x6

.field public static final CoordinatorLayout_keylines:I = 0x0

.field public static final CoordinatorLayout_statusBarBackground:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 34
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 35
    fill-array-data v0, :array_1

    sput-object v0, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f030222
        0x7f030398
    .end array-data

    :array_1
    .array-data 4
        0x10100b3
        0x7f03022d
        0x7f03022e
        0x7f03022f
        0x7f030260
        0x7f03026a
        0x7f03026b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final synthetic Landroidx/profileinstaller/-$$Lambda$DeviceProfileWriter$zmwr4xQB3YrtQRxPpKq8AbHRfmM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/profileinstaller/DeviceProfileWriter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/profileinstaller/DeviceProfileWriter;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/profileinstaller/-$$Lambda$DeviceProfileWriter$zmwr4xQB3YrtQRxPpKq8AbHRfmM;->f$0:Landroidx/profileinstaller/DeviceProfileWriter;

    iput p2, p0, Landroidx/profileinstaller/-$$Lambda$DeviceProfileWriter$zmwr4xQB3YrtQRxPpKq8AbHRfmM;->f$1:I

    iput-object p3, p0, Landroidx/profileinstaller/-$$Lambda$DeviceProfileWriter$zmwr4xQB3YrtQRxPpKq8AbHRfmM;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/profileinstaller/-$$Lambda$DeviceProfileWriter$zmwr4xQB3YrtQRxPpKq8AbHRfmM;->f$0:Landroidx/profileinstaller/DeviceProfileWriter;

    iget v1, p0, Landroidx/profileinstaller/-$$Lambda$DeviceProfileWriter$zmwr4xQB3YrtQRxPpKq8AbHRfmM;->f$1:I

    iget-object v2, p0, Landroidx/profileinstaller/-$$Lambda$DeviceProfileWriter$zmwr4xQB3YrtQRxPpKq8AbHRfmM;->f$2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->lambda$result$0$DeviceProfileWriter(ILjava/lang/Object;)V

    return-void
.end method

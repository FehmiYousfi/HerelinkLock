.class public final Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;
.super Ljava/lang/Object;
.source "AslObctrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/AslObctrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private obctrlStatus:I

.field private timestamp:Ljava/math/BigInteger;

.field private uaill:F

.field private uailr:F

.field private uelev:F

.field private urud:F

.field private uthrot:F

.field private uthrot2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/asluav/AslObctrl;
    .locals 11

    .line 344
    new-instance v10, Lio/dronefleet/mavlink/asluav/AslObctrl;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->timestamp:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->uelev:F

    iget v3, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->uthrot:F

    iget v4, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->uthrot2:F

    iget v5, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->uaill:F

    iget v6, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->uailr:F

    iget v7, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->urud:F

    iget v8, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->obctrlStatus:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/asluav/AslObctrl;-><init>(Ljava/math/BigInteger;FFFFFFILio/dronefleet/mavlink/asluav/AslObctrl$1;)V

    return-object v10
.end method

.method public final obctrlStatus(I)Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Off-board computer status"
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 339
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->obctrlStatus:I

    return-object p0
.end method

.method public final timestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since system start"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 248
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->timestamp:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final uaill(F)Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Left aileron command [~]"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 300
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->uaill:F

    return-object p0
.end method

.method public final uailr(F)Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Right aileron command [~]"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 313
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->uailr:F

    return-object p0
.end method

.method public final uelev(F)Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Elevator command [~]"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 261
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->uelev:F

    return-object p0
.end method

.method public final urud(F)Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Rudder command [~]"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 326
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->urud:F

    return-object p0
.end method

.method public final uthrot(F)Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle command [~]"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 274
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->uthrot:F

    return-object p0
.end method

.method public final uthrot2(F)Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle 2 command [~]"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 287
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;->uthrot2:F

    return-object p0
.end method

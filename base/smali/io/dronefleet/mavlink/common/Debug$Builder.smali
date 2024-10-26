.class public final Lio/dronefleet/mavlink/common/Debug$Builder;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private ind:I

.field private timeBootMs:J

.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/Debug;
    .locals 7

    .line 171
    new-instance v6, Lio/dronefleet/mavlink/common/Debug;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/Debug$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/Debug$Builder;->ind:I

    iget v4, p0, Lio/dronefleet/mavlink/common/Debug$Builder;->value:F

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/Debug;-><init>(JIFLio/dronefleet/mavlink/common/Debug$1;)V

    return-object v6
.end method

.method public final ind(I)Lio/dronefleet/mavlink/common/Debug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "index of debug variable"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 153
    iput p1, p0, Lio/dronefleet/mavlink/common/Debug$Builder;->ind:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/Debug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 140
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Debug$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final value(F)Lio/dronefleet/mavlink/common/Debug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "DEBUG value"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 166
    iput p1, p0, Lio/dronefleet/mavlink/common/Debug$Builder;->value:F

    return-object p0
.end method

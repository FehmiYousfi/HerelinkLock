.class public final Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;
.super Ljava/lang/Object;
.source "ScaledPressure2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ScaledPressure2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private pressAbs:F

.field private pressDiff:F

.field private temperature:I

.field private temperaturePressDiff:I

.field private timeBootMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ScaledPressure2;
    .locals 9

    .line 248
    new-instance v8, Lio/dronefleet/mavlink/common/ScaledPressure2;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;->pressAbs:F

    iget v4, p0, Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;->pressDiff:F

    iget v5, p0, Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;->temperature:I

    iget v6, p0, Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;->temperaturePressDiff:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/ScaledPressure2;-><init>(JFFIILio/dronefleet/mavlink/common/ScaledPressure2$1;)V

    return-object v8
.end method

.method public final pressAbs(F)Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Absolute pressure"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 200
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;->pressAbs:F

    return-object p0
.end method

.method public final pressDiff(F)Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Differential pressure"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 213
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;->pressDiff:F

    return-object p0
.end method

.method public final temperature(I)Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Absolute pressure temperature"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 227
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;->temperature:I

    return-object p0
.end method

.method public final temperaturePressDiff(I)Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Differential pressure\n                temperature (0, if not available). Report values of 0 (or 1) as 1 cdegC."
        extension = true
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 243
    iput p1, p0, Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;->temperaturePressDiff:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 187
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/ScaledPressure2$Builder;->timeBootMs:J

    return-object p0
.end method

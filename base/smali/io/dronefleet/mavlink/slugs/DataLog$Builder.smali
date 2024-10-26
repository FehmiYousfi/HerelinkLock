.class public final Lio/dronefleet/mavlink/slugs/DataLog$Builder;
.super Ljava/lang/Object;
.source "DataLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/DataLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private fl1:F

.field private fl2:F

.field private fl3:F

.field private fl4:F

.field private fl5:F

.field private fl6:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/DataLog;
    .locals 9

    .line 272
    new-instance v8, Lio/dronefleet/mavlink/slugs/DataLog;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/DataLog$Builder;->fl1:F

    iget v2, p0, Lio/dronefleet/mavlink/slugs/DataLog$Builder;->fl2:F

    iget v3, p0, Lio/dronefleet/mavlink/slugs/DataLog$Builder;->fl3:F

    iget v4, p0, Lio/dronefleet/mavlink/slugs/DataLog$Builder;->fl4:F

    iget v5, p0, Lio/dronefleet/mavlink/slugs/DataLog$Builder;->fl5:F

    iget v6, p0, Lio/dronefleet/mavlink/slugs/DataLog$Builder;->fl6:F

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/slugs/DataLog;-><init>(FFFFFFLio/dronefleet/mavlink/slugs/DataLog$1;)V

    return-object v8
.end method

.method public final fl1(F)Lio/dronefleet/mavlink/slugs/DataLog$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Log value 1"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 202
    iput p1, p0, Lio/dronefleet/mavlink/slugs/DataLog$Builder;->fl1:F

    return-object p0
.end method

.method public final fl2(F)Lio/dronefleet/mavlink/slugs/DataLog$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Log value 2"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 215
    iput p1, p0, Lio/dronefleet/mavlink/slugs/DataLog$Builder;->fl2:F

    return-object p0
.end method

.method public final fl3(F)Lio/dronefleet/mavlink/slugs/DataLog$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Log value 3"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 228
    iput p1, p0, Lio/dronefleet/mavlink/slugs/DataLog$Builder;->fl3:F

    return-object p0
.end method

.method public final fl4(F)Lio/dronefleet/mavlink/slugs/DataLog$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Log value 4"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 241
    iput p1, p0, Lio/dronefleet/mavlink/slugs/DataLog$Builder;->fl4:F

    return-object p0
.end method

.method public final fl5(F)Lio/dronefleet/mavlink/slugs/DataLog$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Log value 5"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 254
    iput p1, p0, Lio/dronefleet/mavlink/slugs/DataLog$Builder;->fl5:F

    return-object p0
.end method

.method public final fl6(F)Lio/dronefleet/mavlink/slugs/DataLog$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Log value 6"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 267
    iput p1, p0, Lio/dronefleet/mavlink/slugs/DataLog$Builder;->fl6:F

    return-object p0
.end method

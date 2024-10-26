.class public final Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;
.super Ljava/lang/Object;
.source "AslctrlDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/AslctrlDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private f1:F

.field private f2:F

.field private f3:F

.field private f4:F

.field private f5:F

.field private f6:F

.field private f7:F

.field private f8:F

.field private i321:J

.field private i81:I

.field private i82:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/asluav/AslctrlDebug;
    .locals 15

    .line 448
    new-instance v14, Lio/dronefleet/mavlink/asluav/AslctrlDebug;

    iget-wide v1, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->i321:J

    iget v3, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->i81:I

    iget v4, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->i82:I

    iget v5, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f1:F

    iget v6, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f2:F

    iget v7, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f3:F

    iget v8, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f4:F

    iget v9, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f5:F

    iget v10, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f6:F

    iget v11, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f7:F

    iget v12, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f8:F

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/asluav/AslctrlDebug;-><init>(JIIFFFFFFFFLio/dronefleet/mavlink/asluav/AslctrlDebug$1;)V

    return-object v14
.end method

.method public final f1(F)Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug data"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 352
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f1:F

    return-object p0
.end method

.method public final f2(F)Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug data"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 365
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f2:F

    return-object p0
.end method

.method public final f3(F)Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug data"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 378
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f3:F

    return-object p0
.end method

.method public final f4(F)Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug data"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 391
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f4:F

    return-object p0
.end method

.method public final f5(F)Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug data"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 404
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f5:F

    return-object p0
.end method

.method public final f6(F)Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug data"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 417
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f6:F

    return-object p0
.end method

.method public final f7(F)Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug data"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 430
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f7:F

    return-object p0
.end method

.method public final f8(F)Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug data"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 443
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->f8:F

    return-object p0
.end method

.method public final i321(J)Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug data"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 313
    iput-wide p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->i321:J

    return-object p0
.end method

.method public final i81(I)Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug data"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 326
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->i81:I

    return-object p0
.end method

.method public final i82(I)Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug data"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 339
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlDebug$Builder;->i82:I

    return-object p0
.end method

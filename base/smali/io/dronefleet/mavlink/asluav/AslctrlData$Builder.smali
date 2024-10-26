.class public final Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
.super Ljava/lang/Object;
.source "AslctrlData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/AslctrlData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private airspeedref:F

.field private aslctrlMode:I

.field private h:F

.field private href:F

.field private hrefT:F

.field private nz:F

.field private p:F

.field private pitchangle:F

.field private pitchangleref:F

.field private pref:F

.field private q:F

.field private qref:F

.field private r:F

.field private rollangle:F

.field private rollangleref:F

.field private rref:F

.field private spoilersengaged:I

.field private timestamp:Ljava/math/BigInteger;

.field private uail:F

.field private uelev:F

.field private urud:F

.field private uthrot:F

.field private uthrot2:F

.field private yawangle:F

.field private yawangleref:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final airspeedref(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Airspeed reference"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 773
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->airspeedref:F

    return-object p0
.end method

.method public final aslctrlMode(I)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ASLCTRL control-mode (manual, stabilized,\n                auto, etc...)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 625
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->aslctrlMode:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/asluav/AslctrlData;
    .locals 30

    move-object/from16 v0, p0

    .line 914
    new-instance v28, Lio/dronefleet/mavlink/asluav/AslctrlData;

    move-object/from16 v1, v28

    iget-object v2, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->timestamp:Ljava/math/BigInteger;

    iget v3, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->aslctrlMode:I

    iget v4, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->h:F

    iget v5, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->href:F

    iget v6, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->hrefT:F

    iget v7, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->pitchangle:F

    iget v8, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->pitchangleref:F

    iget v9, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->q:F

    iget v10, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->qref:F

    iget v11, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->uelev:F

    iget v12, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->uthrot:F

    iget v13, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->uthrot2:F

    iget v14, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->nz:F

    iget v15, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->airspeedref:F

    move-object/from16 v29, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->spoilersengaged:I

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->yawangle:F

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->yawangleref:F

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->rollangle:F

    move/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->rollangleref:F

    move/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->p:F

    move/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->pref:F

    move/from16 v22, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->r:F

    move/from16 v23, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->rref:F

    move/from16 v24, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->uail:F

    move/from16 v25, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->urud:F

    move/from16 v26, v1

    const/16 v27, 0x0

    move-object/from16 v1, v29

    invoke-direct/range {v1 .. v27}, Lio/dronefleet/mavlink/asluav/AslctrlData;-><init>(Ljava/math/BigInteger;IFFFFFFFFFFFFIFFFFFFFFFFLio/dronefleet/mavlink/asluav/AslctrlData$1;)V

    return-object v28
.end method

.method public final h(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "See sourcecode for a description of these values..."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 638
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->h:F

    return-object p0
.end method

.method public final href(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 650
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->href:F

    return-object p0
.end method

.method public final hrefT(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 662
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->hrefT:F

    return-object p0
.end method

.method public final nz(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 760
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->nz:F

    return-object p0
.end method

.method public final p(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x14
        unitSize = 0x4
    .end annotation

    .line 849
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->p:F

    return-object p0
.end method

.method public final pitchangle(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angle"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 675
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->pitchangle:F

    return-object p0
.end method

.method public final pitchangleref(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angle reference"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 688
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->pitchangleref:F

    return-object p0
.end method

.method public final pref(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x15
        unitSize = 0x4
    .end annotation

    .line 861
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->pref:F

    return-object p0
.end method

.method public final q(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 700
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->q:F

    return-object p0
.end method

.method public final qref(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 712
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->qref:F

    return-object p0
.end method

.method public final r(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x16
        unitSize = 0x4
    .end annotation

    .line 873
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->r:F

    return-object p0
.end method

.method public final rollangle(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angle"
        position = 0x12
        unitSize = 0x4
    .end annotation

    .line 824
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->rollangle:F

    return-object p0
.end method

.method public final rollangleref(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angle reference"
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 837
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->rollangleref:F

    return-object p0
.end method

.method public final rref(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x17
        unitSize = 0x4
    .end annotation

    .line 885
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->rref:F

    return-object p0
.end method

.method public final spoilersengaged(I)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 785
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->spoilersengaged:I

    return-object p0
.end method

.method public final timestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 611
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->timestamp:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final uail(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x18
        unitSize = 0x4
    .end annotation

    .line 897
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->uail:F

    return-object p0
.end method

.method public final uelev(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 724
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->uelev:F

    return-object p0
.end method

.method public final urud(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x19
        unitSize = 0x4
    .end annotation

    .line 909
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->urud:F

    return-object p0
.end method

.method public final uthrot(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 736
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->uthrot:F

    return-object p0
.end method

.method public final uthrot2(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 748
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->uthrot2:F

    return-object p0
.end method

.method public final yawangle(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 798
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->yawangle:F

    return-object p0
.end method

.method public final yawangleref(F)Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle reference"
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 811
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AslctrlData$Builder;->yawangleref:F

    return-object p0
.end method

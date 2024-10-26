.class public final Lio/dronefleet/mavlink/common/HilState$Builder;
.super Ljava/lang/Object;
.source "HilState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/HilState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private alt:I

.field private lat:I

.field private lon:I

.field private pitch:F

.field private pitchspeed:F

.field private roll:F

.field private rollspeed:F

.field private timeUsec:Ljava/math/BigInteger;

.field private vx:I

.field private vy:I

.field private vz:I

.field private xacc:I

.field private yacc:I

.field private yaw:F

.field private yawspeed:F

.field private zacc:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final alt(I)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude"
        position = 0xb
        signed = true
        unitSize = 0x4
    .end annotation

    .line 568
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->alt:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/HilState;
    .locals 21

    move-object/from16 v0, p0

    .line 657
    new-instance v19, Lio/dronefleet/mavlink/common/HilState;

    move-object/from16 v1, v19

    iget-object v2, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v3, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->roll:F

    iget v4, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->pitch:F

    iget v5, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->yaw:F

    iget v6, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->rollspeed:F

    iget v7, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->pitchspeed:F

    iget v8, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->yawspeed:F

    iget v9, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->lat:I

    iget v10, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->lon:I

    iget v11, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->alt:I

    iget v12, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->vx:I

    iget v13, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->vy:I

    iget v14, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->vz:I

    iget v15, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->xacc:I

    move-object/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->yacc:I

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HilState$Builder;->zacc:I

    move/from16 v17, v1

    const/16 v18, 0x0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lio/dronefleet/mavlink/common/HilState;-><init>(Ljava/math/BigInteger;FFFFFFIIIIIIIIILio/dronefleet/mavlink/common/HilState$1;)V

    return-object v19
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x9
        signed = true
        unitSize = 0x4
    .end annotation

    .line 540
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0xa
        signed = true
        unitSize = 0x4
    .end annotation

    .line 554
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->lon:I

    return-object p0
.end method

.method public final pitch(F)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angle"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 473
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->pitch:F

    return-object p0
.end method

.method public final pitchspeed(F)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame pitch / theta angular\n                speed"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 513
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->pitchspeed:F

    return-object p0
.end method

.method public final roll(F)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angle"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 460
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->roll:F

    return-object p0
.end method

.method public final rollspeed(F)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame roll / phi angular speed"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 499
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->rollspeed:F

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 447
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final vx(I)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground X Speed (Latitude)"
        position = 0xc
        signed = true
        unitSize = 0x2
    .end annotation

    .line 582
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->vx:I

    return-object p0
.end method

.method public final vy(I)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Y Speed (Longitude)"
        position = 0xd
        signed = true
        unitSize = 0x2
    .end annotation

    .line 596
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->vy:I

    return-object p0
.end method

.method public final vz(I)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Z Speed (Altitude)"
        position = 0xe
        signed = true
        unitSize = 0x2
    .end annotation

    .line 610
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->vz:I

    return-object p0
.end method

.method public final xacc(I)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration"
        position = 0xf
        signed = true
        unitSize = 0x2
    .end annotation

    .line 624
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->xacc:I

    return-object p0
.end method

.method public final yacc(I)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration"
        position = 0x10
        signed = true
        unitSize = 0x2
    .end annotation

    .line 638
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->yacc:I

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 486
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->yaw:F

    return-object p0
.end method

.method public final yawspeed(F)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame yaw / psi angular speed"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 526
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->yawspeed:F

    return-object p0
.end method

.method public final zacc(I)Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration"
        position = 0x11
        signed = true
        unitSize = 0x2
    .end annotation

    .line 652
    iput p1, p0, Lio/dronefleet/mavlink/common/HilState$Builder;->zacc:I

    return-object p0
.end method

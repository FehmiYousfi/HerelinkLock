.class public final Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
.super Ljava/lang/Object;
.source "HilStateQuaternion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/HilStateQuaternion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private alt:I

.field private attitudeQuaternion:[F

.field private indAirspeed:I

.field private lat:I

.field private lon:I

.field private pitchspeed:F

.field private rollspeed:F

.field private timeUsec:Ljava/math/BigInteger;

.field private trueAirspeed:I

.field private vx:I

.field private vy:I

.field private vz:I

.field private xacc:I

.field private yacc:I

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
.method public final alt(I)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude"
        position = 0x8
        signed = true
        unitSize = 0x4
    .end annotation

    .line 545
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->alt:I

    return-object p0
.end method

.method public final attitudeQuaternion([F)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Vehicle attitude expressed as\n                normalized quaternion in w, x, y, z order (with 1 0 0 0 being the null-rotation)"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 463
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->attitudeQuaternion:[F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/HilStateQuaternion;
    .locals 21

    move-object/from16 v0, p0

    .line 660
    new-instance v19, Lio/dronefleet/mavlink/common/HilStateQuaternion;

    move-object/from16 v1, v19

    iget-object v2, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->attitudeQuaternion:[F

    iget v4, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->rollspeed:F

    iget v5, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->pitchspeed:F

    iget v6, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->yawspeed:F

    iget v7, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->lat:I

    iget v8, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->lon:I

    iget v9, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->alt:I

    iget v10, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->vx:I

    iget v11, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->vy:I

    iget v12, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->vz:I

    iget v13, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->indAirspeed:I

    iget v14, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->trueAirspeed:I

    iget v15, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->xacc:I

    move-object/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->yacc:I

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->zacc:I

    move/from16 v17, v1

    const/16 v18, 0x0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lio/dronefleet/mavlink/common/HilStateQuaternion;-><init>(Ljava/math/BigInteger;[FFFFIIIIIIIIIIILio/dronefleet/mavlink/common/HilStateQuaternion$1;)V

    return-object v19
.end method

.method public final indAirspeed(I)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicated airspeed"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 600
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->indAirspeed:I

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 517
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 531
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->lon:I

    return-object p0
.end method

.method public final pitchspeed(F)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame pitch / theta angular\n                speed"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 490
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->pitchspeed:F

    return-object p0
.end method

.method public final rollspeed(F)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame roll / phi angular speed"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 476
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->rollspeed:F

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 447
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final trueAirspeed(I)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "True airspeed"
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 613
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->trueAirspeed:I

    return-object p0
.end method

.method public final vx(I)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground X Speed (Latitude)"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 559
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->vx:I

    return-object p0
.end method

.method public final vy(I)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Y Speed (Longitude)"
        position = 0xa
        signed = true
        unitSize = 0x2
    .end annotation

    .line 573
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->vy:I

    return-object p0
.end method

.method public final vz(I)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Z Speed (Altitude)"
        position = 0xb
        signed = true
        unitSize = 0x2
    .end annotation

    .line 587
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->vz:I

    return-object p0
.end method

.method public final xacc(I)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration"
        position = 0xe
        signed = true
        unitSize = 0x2
    .end annotation

    .line 627
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->xacc:I

    return-object p0
.end method

.method public final yacc(I)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration"
        position = 0xf
        signed = true
        unitSize = 0x2
    .end annotation

    .line 641
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->yacc:I

    return-object p0
.end method

.method public final yawspeed(F)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame yaw / psi angular speed"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 503
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->yawspeed:F

    return-object p0
.end method

.method public final zacc(I)Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration"
        position = 0x10
        signed = true
        unitSize = 0x2
    .end annotation

    .line 655
    iput p1, p0, Lio/dronefleet/mavlink/common/HilStateQuaternion$Builder;->zacc:I

    return-object p0
.end method

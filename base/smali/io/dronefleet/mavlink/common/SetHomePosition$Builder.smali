.class public final Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
.super Ljava/lang/Object;
.source "SetHomePosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SetHomePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private altitude:I

.field private approachX:F

.field private approachY:F

.field private approachZ:F

.field private latitude:I

.field private longitude:I

.field private q:[F

.field private targetSystem:I

.field private timeUsec:Ljava/math/BigInteger;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final altitude(I)Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL). Positive for up."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 431
    iput p1, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->altitude:I

    return-object p0
.end method

.method public final approachX(F)Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local X position of the end of the\n                approach vector. Multicopters should set this position based on their takeoff path.\n                Grass-landing fixed wing aircraft should set it the same way as multicopters.\n                Runway-landing fixed wing aircraft should set it to the opposite direction of the\n                takeoff, assuming the takeoff happened from the threshold / touchdown zone."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 509
    iput p1, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->approachX:F

    return-object p0
.end method

.method public final approachY(F)Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local Y position of the end of the\n                approach vector. Multicopters should set this position based on their takeoff path.\n                Grass-landing fixed wing aircraft should set it the same way as multicopters.\n                Runway-landing fixed wing aircraft should set it to the opposite direction of the\n                takeoff, assuming the takeoff happened from the threshold / touchdown zone."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 529
    iput p1, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->approachY:F

    return-object p0
.end method

.method public final approachZ(F)Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local Z position of the end of the\n                approach vector. Multicopters should set this position based on their takeoff path.\n                Grass-landing fixed wing aircraft should set it the same way as multicopters.\n                Runway-landing fixed wing aircraft should set it to the opposite direction of the\n                takeoff, assuming the takeoff happened from the threshold / touchdown zone."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 549
    iput p1, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->approachZ:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/SetHomePosition;
    .locals 15

    .line 571
    new-instance v14, Lio/dronefleet/mavlink/common/SetHomePosition;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->latitude:I

    iget v3, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->longitude:I

    iget v4, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->altitude:I

    iget v5, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->x:F

    iget v6, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->y:F

    iget v7, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->z:F

    iget-object v8, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->q:[F

    iget v9, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->approachX:F

    iget v10, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->approachY:F

    iget v11, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->approachZ:F

    iget-object v12, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->timeUsec:Ljava/math/BigInteger;

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/common/SetHomePosition;-><init>(IIIIFFF[FFFFLjava/math/BigInteger;Lio/dronefleet/mavlink/common/SetHomePosition$1;)V

    return-object v14
.end method

.method public final latitude(I)Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84)"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 403
    iput p1, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->latitude:I

    return-object p0
.end method

.method public final longitude(I)Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84)"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 417
    iput p1, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->longitude:I

    return-object p0
.end method

.method public final q([F)Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "World to surface normal and heading transformation of\n                the takeoff position. Used to indicate the heading and slope of the ground"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 489
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->q:[F

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 389
    iput p1, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        extension = true
        position = 0xe
        unitSize = 0x8
    .end annotation

    .line 566
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final x(F)Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local X position of this position in the local\n                coordinate frame"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 445
    iput p1, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->x:F

    return-object p0
.end method

.method public final y(F)Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local Y position of this position in the local\n                coordinate frame"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 459
    iput p1, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->y:F

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local Z position of this position in the local\n                coordinate frame"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 473
    iput p1, p0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;->z:F

    return-object p0
.end method

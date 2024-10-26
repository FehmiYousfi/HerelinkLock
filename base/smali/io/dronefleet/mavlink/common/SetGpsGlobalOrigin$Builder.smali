.class public final Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;
.super Ljava/lang/Object;
.source "SetGpsGlobalOrigin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private altitude:I

.field private latitude:I

.field private longitude:I

.field private targetSystem:I

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final altitude(I)Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL). Positive for up."
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 239
    iput p1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;->altitude:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;
    .locals 8

    .line 261
    new-instance v7, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;->latitude:I

    iget v3, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;->longitude:I

    iget v4, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;->altitude:I

    iget-object v5, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;->timeUsec:Ljava/math/BigInteger;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;-><init>(IIIILjava/math/BigInteger;Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$1;)V

    return-object v7
.end method

.method public final latitude(I)Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84)"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 211
    iput p1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;->latitude:I

    return-object p0
.end method

.method public final longitude(I)Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84)"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 225
    iput p1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;->longitude:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 197
    iput p1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        extension = true
        position = 0x6
        unitSize = 0x8
    .end annotation

    .line 256
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

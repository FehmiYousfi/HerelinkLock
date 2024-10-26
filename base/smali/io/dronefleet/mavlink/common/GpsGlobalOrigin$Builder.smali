.class public final Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;
.super Ljava/lang/Object;
.source "GpsGlobalOrigin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/GpsGlobalOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private altitude:I

.field private latitude:I

.field private longitude:I

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final altitude(I)Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL). Positive for up."
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 199
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;->altitude:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/GpsGlobalOrigin;
    .locals 7

    .line 221
    new-instance v6, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;->latitude:I

    iget v2, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;->longitude:I

    iget v3, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;->altitude:I

    iget-object v4, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;->timeUsec:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;-><init>(IIILjava/math/BigInteger;Lio/dronefleet/mavlink/common/GpsGlobalOrigin$1;)V

    return-object v6
.end method

.method public final latitude(I)Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84)"
        position = 0x1
        signed = true
        unitSize = 0x4
    .end annotation

    .line 171
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;->latitude:I

    return-object p0
.end method

.method public final longitude(I)Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84)"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 185
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;->longitude:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        extension = true
        position = 0x5
        unitSize = 0x8
    .end annotation

    .line 216
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

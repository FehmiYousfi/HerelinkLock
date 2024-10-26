.class public final Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;
.super Ljava/lang/Object;
.source "SensAtmos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/SensAtmos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private humidity:F

.field private tempambient:F

.field private timestamp:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/asluav/SensAtmos;
    .locals 5

    .line 168
    new-instance v0, Lio/dronefleet/mavlink/asluav/SensAtmos;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;->timestamp:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;->tempambient:F

    iget v3, p0, Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;->humidity:F

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/asluav/SensAtmos;-><init>(Ljava/math/BigInteger;FFLio/dronefleet/mavlink/asluav/SensAtmos$1;)V

    return-object v0
.end method

.method public final humidity(F)Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Relative humidity"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 163
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;->humidity:F

    return-object p0
.end method

.method public final tempambient(F)Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ambient temperature"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 150
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;->tempambient:F

    return-object p0
.end method

.method public final timestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since system boot"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 137
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;->timestamp:Ljava/math/BigInteger;

    return-object p0
.end method

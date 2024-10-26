.class public final Lio/dronefleet/mavlink/common/HygrometerSensor$Builder;
.super Ljava/lang/Object;
.source "HygrometerSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/HygrometerSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private humidity:I

.field private id:I

.field private temperature:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/HygrometerSensor;
    .locals 5

    .line 169
    new-instance v0, Lio/dronefleet/mavlink/common/HygrometerSensor;

    iget v1, p0, Lio/dronefleet/mavlink/common/HygrometerSensor$Builder;->id:I

    iget v2, p0, Lio/dronefleet/mavlink/common/HygrometerSensor$Builder;->temperature:I

    iget v3, p0, Lio/dronefleet/mavlink/common/HygrometerSensor$Builder;->humidity:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/common/HygrometerSensor;-><init>(IIILio/dronefleet/mavlink/common/HygrometerSensor$1;)V

    return-object v0
.end method

.method public final humidity(I)Lio/dronefleet/mavlink/common/HygrometerSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Humidity"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 164
    iput p1, p0, Lio/dronefleet/mavlink/common/HygrometerSensor$Builder;->humidity:I

    return-object p0
.end method

.method public final id(I)Lio/dronefleet/mavlink/common/HygrometerSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Hygrometer ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 137
    iput p1, p0, Lio/dronefleet/mavlink/common/HygrometerSensor$Builder;->id:I

    return-object p0
.end method

.method public final temperature(I)Lio/dronefleet/mavlink/common/HygrometerSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Temperature"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 151
    iput p1, p0, Lio/dronefleet/mavlink/common/HygrometerSensor$Builder;->temperature:I

    return-object p0
.end method

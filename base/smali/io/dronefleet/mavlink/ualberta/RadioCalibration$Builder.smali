.class public final Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;
.super Ljava/lang/Object;
.source "RadioCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ualberta/RadioCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aileron:[I

.field private elevator:[I

.field private gyro:[I

.field private pitch:[I

.field private rudder:[I

.field private throttle:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aileron([I)Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Aileron setpoints: left, center, right"
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 213
    iput-object p1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;->aileron:[I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ualberta/RadioCalibration;
    .locals 9

    .line 291
    new-instance v8, Lio/dronefleet/mavlink/ualberta/RadioCalibration;

    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;->aileron:[I

    iget-object v2, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;->elevator:[I

    iget-object v3, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;->rudder:[I

    iget-object v4, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;->gyro:[I

    iget-object v5, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;->pitch:[I

    iget-object v6, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;->throttle:[I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ualberta/RadioCalibration;-><init>([I[I[I[I[I[ILio/dronefleet/mavlink/ualberta/RadioCalibration$1;)V

    return-object v8
.end method

.method public final elevator([I)Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Elevator setpoints: nose down, center, nose\n                up"
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 228
    iput-object p1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;->elevator:[I

    return-object p0
.end method

.method public final gyro([I)Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x2
        description = "Tail gyro mode/gain setpoints: heading hold, rate\n                mode"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 258
    iput-object p1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;->gyro:[I

    return-object p0
.end method

.method public final pitch([I)Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x5
        description = "Pitch curve setpoints (every 25%)"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 272
    iput-object p1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;->pitch:[I

    return-object p0
.end method

.method public final rudder([I)Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Rudder setpoints: nose left, center, nose\n                right"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 243
    iput-object p1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;->rudder:[I

    return-object p0
.end method

.method public final throttle([I)Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x5
        description = "Throttle curve setpoints (every 25%)"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 286
    iput-object p1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;->throttle:[I

    return-object p0
.end method

.class public final Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;
.super Ljava/lang/Object;
.source "VoltSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/VoltSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private r2type:I

.field private reading2:I

.field private voltage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/VoltSensor;
    .locals 5

    .line 175
    new-instance v0, Lio/dronefleet/mavlink/slugs/VoltSensor;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;->r2type:I

    iget v2, p0, Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;->voltage:I

    iget v3, p0, Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;->reading2:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/slugs/VoltSensor;-><init>(IIILio/dronefleet/mavlink/slugs/VoltSensor$1;)V

    return-object v0
.end method

.method public final r2type(I)Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "It is the value of reading 2: 0 - Current, 1 -\n                Foreward Sonar, 2 - Back Sonar, 3 - RPM"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 141
    iput p1, p0, Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;->r2type:I

    return-object p0
.end method

.method public final reading2(I)Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Depends on the value of r2Type (0) Current\n                consumption in uS of PWM, 20 uS = 90Amp (1) Distance in cm (2) Distance in cm (3)\n                Absolute value"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 170
    iput p1, p0, Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;->reading2:I

    return-object p0
.end method

.method public final voltage(I)Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Voltage in uS of PWM. 0 uS = 0V, 20 uS = 21.5V"
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 154
    iput p1, p0, Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;->voltage:I

    return-object p0
.end method

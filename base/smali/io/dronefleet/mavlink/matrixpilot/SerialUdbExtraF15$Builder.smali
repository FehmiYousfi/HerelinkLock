.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF15$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF15.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueIdVehicleModelName:[B

.field private sueIdVehicleRegistration:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF15;
    .locals 4

    .line 140
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF15;

    iget-object v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF15$Builder;->sueIdVehicleModelName:[B

    iget-object v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF15$Builder;->sueIdVehicleRegistration:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF15;-><init>([B[BLio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF15$1;)V

    return-object v0
.end method

.method public final sueIdVehicleModelName([B)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF15$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x28
        description = "Serial UDB Extra Model Name\n                Of Vehicle"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 120
    iput-object p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF15$Builder;->sueIdVehicleModelName:[B

    return-object p0
.end method

.method public final sueIdVehicleRegistration([B)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF15$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Serial UDB Extra\n                Registraton Number of Vehicle"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 135
    iput-object p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF15$Builder;->sueIdVehicleRegistration:[B

    return-object p0
.end method

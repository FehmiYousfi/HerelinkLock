.class public final Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;
.super Ljava/lang/Object;
.source "AsluavStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/AsluavStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private ledStatus:I

.field private motorRpm:F

.field private satcomStatus:I

.field private servoStatus:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/asluav/AsluavStatus;
    .locals 7

    .line 206
    new-instance v6, Lio/dronefleet/mavlink/asluav/AsluavStatus;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;->ledStatus:I

    iget v2, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;->satcomStatus:I

    iget-object v3, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;->servoStatus:[B

    iget v4, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;->motorRpm:F

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/asluav/AsluavStatus;-><init>(II[BFLio/dronefleet/mavlink/asluav/AsluavStatus$1;)V

    return-object v6
.end method

.method public final ledStatus(I)Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status of the position-indicator LEDs"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 160
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;->ledStatus:I

    return-object p0
.end method

.method public final motorRpm(F)Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Motor RPM"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 201
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;->motorRpm:F

    return-object p0
.end method

.method public final satcomStatus(I)Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status of the IRIDIUM satellite communication\n                system"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 174
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;->satcomStatus:I

    return-object p0
.end method

.method public final servoStatus([B)Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8
        description = "Status vector for up to 8 servos"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 188
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;->servoStatus:[B

    return-object p0
.end method

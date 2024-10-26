.class public final Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
.super Ljava/lang/Object;
.source "SensBatmon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/SensBatmon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private batmonTimestamp:Ljava/math/BigInteger;

.field private batterystatus:I

.field private cellvoltage1:I

.field private cellvoltage2:I

.field private cellvoltage3:I

.field private cellvoltage4:I

.field private cellvoltage5:I

.field private cellvoltage6:I

.field private current:I

.field private operationstatus:J

.field private safetystatus:J

.field private serialnumber:I

.field private soc:I

.field private temperature:F

.field private voltage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final batmonTimestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since system start"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 407
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->batmonTimestamp:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final batterystatus(I)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery monitor status report bits in Hex"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 473
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->batterystatus:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/asluav/SensBatmon;
    .locals 22

    move-object/from16 v0, p0

    .line 597
    new-instance v20, Lio/dronefleet/mavlink/asluav/SensBatmon;

    move-object/from16 v1, v20

    iget-object v2, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->batmonTimestamp:Ljava/math/BigInteger;

    iget v3, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->temperature:F

    iget v4, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->voltage:I

    iget v5, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->current:I

    iget v6, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->soc:I

    iget v7, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->batterystatus:I

    iget v8, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->serialnumber:I

    iget-wide v9, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->safetystatus:J

    iget-wide v11, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->operationstatus:J

    iget v13, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->cellvoltage1:I

    iget v14, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->cellvoltage2:I

    iget v15, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->cellvoltage3:I

    move-object/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->cellvoltage4:I

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->cellvoltage5:I

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->cellvoltage6:I

    move/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lio/dronefleet/mavlink/asluav/SensBatmon;-><init>(Ljava/math/BigInteger;FIIIIIJJIIIIIILio/dronefleet/mavlink/asluav/SensBatmon$1;)V

    return-object v20
.end method

.method public final cellvoltage1(I)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack cell 1 voltage"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 527
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->cellvoltage1:I

    return-object p0
.end method

.method public final cellvoltage2(I)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack cell 2 voltage"
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 540
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->cellvoltage2:I

    return-object p0
.end method

.method public final cellvoltage3(I)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack cell 3 voltage"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 553
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->cellvoltage3:I

    return-object p0
.end method

.method public final cellvoltage4(I)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack cell 4 voltage"
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 566
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->cellvoltage4:I

    return-object p0
.end method

.method public final cellvoltage5(I)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack cell 5 voltage"
        position = 0xe
        unitSize = 0x2
    .end annotation

    .line 579
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->cellvoltage5:I

    return-object p0
.end method

.method public final cellvoltage6(I)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack cell 6 voltage"
        position = 0xf
        unitSize = 0x2
    .end annotation

    .line 592
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->cellvoltage6:I

    return-object p0
.end method

.method public final current(I)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack current"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 447
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->current:I

    return-object p0
.end method

.method public final operationstatus(J)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery monitor operation status report\n                bits in Hex"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 514
    iput-wide p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->operationstatus:J

    return-object p0
.end method

.method public final safetystatus(J)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery monitor safetystatus report bits in\n                Hex"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 500
    iput-wide p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->safetystatus:J

    return-object p0
.end method

.method public final serialnumber(I)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery monitor serial number in Hex"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 486
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->serialnumber:I

    return-object p0
.end method

.method public final soc(I)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack state-of-charge"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 460
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->soc:I

    return-object p0
.end method

.method public final temperature(F)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack temperature"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 420
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->temperature:F

    return-object p0
.end method

.method public final voltage(I)Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack voltage"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 433
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;->voltage:I

    return-object p0
.end method

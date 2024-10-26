.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF2A.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueAirSpeed3dimu:I

.field private sueAltitude:I

.field private sueCog:I

.field private sueCpuLoad:I

.field private sueEstimatedWind0:I

.field private sueEstimatedWind1:I

.field private sueEstimatedWind2:I

.field private sueHdop:I

.field private sueLatitude:I

.field private sueLongitude:I

.field private sueMagfieldearth0:I

.field private sueMagfieldearth1:I

.field private sueMagfieldearth2:I

.field private sueRmat0:I

.field private sueRmat1:I

.field private sueRmat2:I

.field private sueRmat3:I

.field private sueRmat4:I

.field private sueRmat5:I

.field private sueRmat6:I

.field private sueRmat7:I

.field private sueRmat8:I

.field private sueSog:I

.field private sueStatus:I

.field private sueSvs:I

.field private sueTime:J

.field private sueWaypointIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;
    .locals 33

    move-object/from16 v0, p0

    .line 1063
    new-instance v31, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;

    move-object/from16 v1, v31

    iget-wide v2, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueTime:J

    iget v4, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueStatus:I

    iget v5, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueLatitude:I

    iget v6, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueLongitude:I

    iget v7, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueAltitude:I

    iget v8, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueWaypointIndex:I

    iget v9, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat0:I

    iget v10, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat1:I

    iget v11, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat2:I

    iget v12, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat3:I

    iget v13, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat4:I

    iget v14, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat5:I

    iget v15, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat6:I

    move-object/from16 v32, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat7:I

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat8:I

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueCog:I

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueSog:I

    move/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueCpuLoad:I

    move/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueAirSpeed3dimu:I

    move/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueEstimatedWind0:I

    move/from16 v22, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueEstimatedWind1:I

    move/from16 v23, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueEstimatedWind2:I

    move/from16 v24, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueMagfieldearth0:I

    move/from16 v25, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueMagfieldearth1:I

    move/from16 v26, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueMagfieldearth2:I

    move/from16 v27, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueSvs:I

    move/from16 v28, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueHdop:I

    move/from16 v29, v1

    const/16 v30, 0x0

    move-object/from16 v1, v32

    invoke-direct/range {v1 .. v30}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;-><init>(JIIIIIIIIIIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$1;)V

    return-object v31
.end method

.method public final sueAirSpeed3dimu(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra 3D IMU Air Speed"
        position = 0x13
        unitSize = 0x2
    .end annotation

    .line 942
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueAirSpeed3dimu:I

    return-object p0
.end method

.method public final sueAltitude(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Altitude"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 750
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueAltitude:I

    return-object p0
.end method

.method public final sueCog(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra GPS Course Over Ground"
        position = 0x10
        unitSize = 0x2
    .end annotation

    .line 902
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueCog:I

    return-object p0
.end method

.method public final sueCpuLoad(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra CPU Load"
        position = 0x12
        unitSize = 0x2
    .end annotation

    .line 929
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueCpuLoad:I

    return-object p0
.end method

.method public final sueEstimatedWind0(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Estimated Wind 0"
        position = 0x14
        signed = true
        unitSize = 0x2
    .end annotation

    .line 956
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueEstimatedWind0:I

    return-object p0
.end method

.method public final sueEstimatedWind1(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Estimated Wind 1"
        position = 0x15
        signed = true
        unitSize = 0x2
    .end annotation

    .line 970
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueEstimatedWind1:I

    return-object p0
.end method

.method public final sueEstimatedWind2(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Estimated Wind 2"
        position = 0x16
        signed = true
        unitSize = 0x2
    .end annotation

    .line 984
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueEstimatedWind2:I

    return-object p0
.end method

.method public final sueHdop(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra GPS Horizontal Dilution of\n                Precision"
        position = 0x1b
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1058
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueHdop:I

    return-object p0
.end method

.method public final sueLatitude(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Latitude"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 722
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueLatitude:I

    return-object p0
.end method

.method public final sueLongitude(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Longitude"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 736
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueLongitude:I

    return-object p0
.end method

.method public final sueMagfieldearth0(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Magnetic Field Earth\n                0"
        position = 0x17
        signed = true
        unitSize = 0x2
    .end annotation

    .line 999
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueMagfieldearth0:I

    return-object p0
.end method

.method public final sueMagfieldearth1(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Magnetic Field Earth\n                1"
        position = 0x18
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1014
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueMagfieldearth1:I

    return-object p0
.end method

.method public final sueMagfieldearth2(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Magnetic Field Earth\n                2"
        position = 0x19
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1029
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueMagfieldearth2:I

    return-object p0
.end method

.method public final sueRmat0(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 0"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 777
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat0:I

    return-object p0
.end method

.method public final sueRmat1(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 1"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 791
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat1:I

    return-object p0
.end method

.method public final sueRmat2(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 2"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 805
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat2:I

    return-object p0
.end method

.method public final sueRmat3(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 3"
        position = 0xa
        signed = true
        unitSize = 0x2
    .end annotation

    .line 819
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat3:I

    return-object p0
.end method

.method public final sueRmat4(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 4"
        position = 0xb
        signed = true
        unitSize = 0x2
    .end annotation

    .line 833
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat4:I

    return-object p0
.end method

.method public final sueRmat5(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 5"
        position = 0xc
        signed = true
        unitSize = 0x2
    .end annotation

    .line 847
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat5:I

    return-object p0
.end method

.method public final sueRmat6(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 6"
        position = 0xd
        signed = true
        unitSize = 0x2
    .end annotation

    .line 861
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat6:I

    return-object p0
.end method

.method public final sueRmat7(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 7"
        position = 0xe
        signed = true
        unitSize = 0x2
    .end annotation

    .line 875
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat7:I

    return-object p0
.end method

.method public final sueRmat8(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 8"
        position = 0xf
        signed = true
        unitSize = 0x2
    .end annotation

    .line 889
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueRmat8:I

    return-object p0
.end method

.method public final sueSog(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Speed Over Ground"
        position = 0x11
        signed = true
        unitSize = 0x2
    .end annotation

    .line 916
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueSog:I

    return-object p0
.end method

.method public final sueStatus(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Status"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 708
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueStatus:I

    return-object p0
.end method

.method public final sueSvs(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Number of Sattelites in View"
        position = 0x1a
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1043
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueSvs:I

    return-object p0
.end method

.method public final sueTime(J)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Time"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 695
    iput-wide p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueTime:J

    return-object p0
.end method

.method public final sueWaypointIndex(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Waypoint Index"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 763
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;->sueWaypointIndex:I

    return-object p0
.end method

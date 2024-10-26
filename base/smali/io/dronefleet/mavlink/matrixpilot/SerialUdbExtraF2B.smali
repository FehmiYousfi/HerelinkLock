.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;
.super Ljava/lang/Object;
.source "SerialUdbExtraF2B.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xf5
    description = "Backwards compatible version of SERIAL_UDB_EXTRA - F2: Part B"
    id = 0xab
.end annotation


# instance fields
.field private final sueAeroX:I

.field private final sueAeroY:I

.field private final sueAeroZ:I

.field private final sueBaromAlt:I

.field private final sueBaromPress:I

.field private final sueBaromTemp:I

.field private final sueBatAmp:I

.field private final sueBatAmpHours:I

.field private final sueBatVolt:I

.field private final sueDesiredHeight:I

.field private final sueFlags:J

.field private final sueImuLocationX:I

.field private final sueImuLocationY:I

.field private final sueImuLocationZ:I

.field private final sueImuVelocityX:I

.field private final sueImuVelocityY:I

.field private final sueImuVelocityZ:I

.field private final sueLocationErrorEarthX:I

.field private final sueLocationErrorEarthY:I

.field private final sueLocationErrorEarthZ:I

.field private final sueMemoryStackFree:I

.field private final sueOscFails:I

.field private final suePwmInput1:I

.field private final suePwmInput10:I

.field private final suePwmInput11:I

.field private final suePwmInput12:I

.field private final suePwmInput2:I

.field private final suePwmInput3:I

.field private final suePwmInput4:I

.field private final suePwmInput5:I

.field private final suePwmInput6:I

.field private final suePwmInput7:I

.field private final suePwmInput8:I

.field private final suePwmInput9:I

.field private final suePwmOutput1:I

.field private final suePwmOutput10:I

.field private final suePwmOutput11:I

.field private final suePwmOutput12:I

.field private final suePwmOutput2:I

.field private final suePwmOutput3:I

.field private final suePwmOutput4:I

.field private final suePwmOutput5:I

.field private final suePwmOutput6:I

.field private final suePwmOutput7:I

.field private final suePwmOutput8:I

.field private final suePwmOutput9:I

.field private final sueTime:J

.field private final sueWaypointGoalX:I

.field private final sueWaypointGoalY:I

.field private final sueWaypointGoalZ:I


# direct methods
.method private constructor <init>(JIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIJIIIIIIIIIIIIIIIIII)V
    .locals 3

    move-object v0, p0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 135
    iput-wide v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueTime:J

    move v1, p3

    .line 136
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput1:I

    move v1, p4

    .line 137
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput2:I

    move v1, p5

    .line 138
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput3:I

    move v1, p6

    .line 139
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput4:I

    move v1, p7

    .line 140
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput5:I

    move v1, p8

    .line 141
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput6:I

    move v1, p9

    .line 142
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput7:I

    move v1, p10

    .line 143
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput8:I

    move v1, p11

    .line 144
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput9:I

    move v1, p12

    .line 145
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput10:I

    move/from16 v1, p13

    .line 146
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput11:I

    move/from16 v1, p14

    .line 147
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput12:I

    move/from16 v1, p15

    .line 148
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput1:I

    move/from16 v1, p16

    .line 149
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput2:I

    move/from16 v1, p17

    .line 150
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput3:I

    move/from16 v1, p18

    .line 151
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput4:I

    move/from16 v1, p19

    .line 152
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput5:I

    move/from16 v1, p20

    .line 153
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput6:I

    move/from16 v1, p21

    .line 154
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput7:I

    move/from16 v1, p22

    .line 155
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput8:I

    move/from16 v1, p23

    .line 156
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput9:I

    move/from16 v1, p24

    .line 157
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput10:I

    move/from16 v1, p25

    .line 158
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput11:I

    move/from16 v1, p26

    .line 159
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput12:I

    move/from16 v1, p27

    .line 160
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationX:I

    move/from16 v1, p28

    .line 161
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationY:I

    move/from16 v1, p29

    .line 162
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationZ:I

    move/from16 v1, p30

    .line 163
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthX:I

    move/from16 v1, p31

    .line 164
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthY:I

    move/from16 v1, p32

    .line 165
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthZ:I

    move-wide/from16 v1, p33

    .line 166
    iput-wide v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueFlags:J

    move/from16 v1, p35

    .line 167
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueOscFails:I

    move/from16 v1, p36

    .line 168
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityX:I

    move/from16 v1, p37

    .line 169
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityY:I

    move/from16 v1, p38

    .line 170
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityZ:I

    move/from16 v1, p39

    .line 171
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalX:I

    move/from16 v1, p40

    .line 172
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalY:I

    move/from16 v1, p41

    .line 173
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalZ:I

    move/from16 v1, p42

    .line 174
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroX:I

    move/from16 v1, p43

    .line 175
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroY:I

    move/from16 v1, p44

    .line 176
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroZ:I

    move/from16 v1, p45

    .line 177
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromTemp:I

    move/from16 v1, p46

    .line 178
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromPress:I

    move/from16 v1, p47

    .line 179
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromAlt:I

    move/from16 v1, p48

    .line 180
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatVolt:I

    move/from16 v1, p49

    .line 181
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmp:I

    move/from16 v1, p50

    .line 182
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmpHours:I

    move/from16 v1, p51

    .line 183
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueDesiredHeight:I

    move/from16 v1, p52

    .line 184
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueMemoryStackFree:I

    return-void
.end method

.method synthetic constructor <init>(JIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIJIIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p52}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;-><init>(JIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIJIIIIIIIIIIIIIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 192
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;
    .locals 54

    .line 1018
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 1019
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v33

    .line 1020
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v46

    .line 1021
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v47

    .line 1022
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 1023
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 1024
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 1025
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 1026
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 1027
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 1028
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 1029
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 1030
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 1031
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 1032
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 1033
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 1034
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 1035
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 1036
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v17

    .line 1037
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v18

    .line 1038
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v19

    .line 1039
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v20

    .line 1040
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v21

    .line 1041
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v22

    .line 1042
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v23

    .line 1043
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v24

    .line 1044
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v25

    .line 1045
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v26

    .line 1046
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v27

    .line 1047
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v28

    .line 1048
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v29

    .line 1049
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v30

    .line 1050
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v31

    .line 1051
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v32

    .line 1052
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v35

    .line 1053
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v36

    .line 1054
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v37

    .line 1055
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v38

    .line 1056
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v39

    .line 1057
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v40

    .line 1058
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v41

    .line 1059
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v42

    .line 1060
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v43

    .line 1061
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v44

    .line 1062
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v45

    .line 1063
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v48

    .line 1064
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v49

    .line 1065
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v50

    .line 1066
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v51

    .line 1067
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v52

    .line 1068
    new-instance v53, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;

    move-object/from16 v0, v53

    invoke-direct/range {v0 .. v52}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;-><init>(JIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIJIIIIIIIIIIIIIIIIII)V

    return-object v53
.end method

.method public static serialize(Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x6c

    .line 1072
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1073
    iget-wide v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueTime:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1074
    iget-wide v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueFlags:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1075
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromPress:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1076
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromAlt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1077
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput1:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1078
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput2:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1079
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput3:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1080
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput4:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1081
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput5:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1082
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput6:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1083
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput7:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1084
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput8:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1085
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput9:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1086
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput10:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1087
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput11:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1088
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput12:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1089
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput1:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1090
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput2:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1091
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput3:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1092
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput4:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1093
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput5:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1094
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput6:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1095
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput7:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1096
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput8:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1097
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput9:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1098
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput10:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1099
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput11:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1100
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput12:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1101
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationX:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1102
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationY:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1103
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationZ:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1104
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthX:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1105
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthY:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1106
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthZ:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1107
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueOscFails:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1108
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityX:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1109
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityY:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1110
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityZ:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1111
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalX:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1112
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalY:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1113
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalZ:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1114
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroX:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1115
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroY:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1116
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroZ:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1117
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromTemp:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1118
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatVolt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1119
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmp:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1120
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmpHours:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1121
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueDesiredHeight:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1122
    iget p0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueMemoryStackFree:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    .line 852
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 853
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;

    .line 854
    iget-wide v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 855
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 856
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 857
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput3:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 858
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput4:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 859
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput5:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 860
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput6:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 861
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput7:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput7:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 862
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput8:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput8:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 863
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput9:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput9:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 864
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput10:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput10:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 865
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput11:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput11:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 866
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput12:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput12:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 867
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 868
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 869
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput3:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 870
    :cond_11
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput4:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 871
    :cond_12
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput5:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 872
    :cond_13
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput6:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 873
    :cond_14
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput7:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput7:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    .line 874
    :cond_15
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput8:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput8:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 875
    :cond_16
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput9:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput9:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    return v1

    .line 876
    :cond_17
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput10:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput10:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    return v1

    .line 877
    :cond_18
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput11:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput11:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 878
    :cond_19
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput12:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput12:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 879
    :cond_1a
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    return v1

    .line 880
    :cond_1b
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    return v1

    .line 881
    :cond_1c
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationZ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    return v1

    .line 882
    :cond_1d
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 883
    :cond_1e
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    .line 884
    :cond_1f
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthZ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    .line 885
    :cond_20
    iget-wide v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueFlags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueFlags:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    return v1

    .line 886
    :cond_21
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueOscFails:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueOscFails:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 887
    :cond_22
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    return v1

    .line 888
    :cond_23
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    return v1

    .line 889
    :cond_24
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityZ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    return v1

    .line 890
    :cond_25
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 891
    :cond_26
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    .line 892
    :cond_27
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalZ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    return v1

    .line 893
    :cond_28
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return v1

    .line 894
    :cond_29
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    return v1

    .line 895
    :cond_2a
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroZ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    .line 896
    :cond_2b
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromTemp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromTemp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    .line 897
    :cond_2c
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromPress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromPress:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    return v1

    .line 898
    :cond_2d
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromAlt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromAlt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    return v1

    .line 899
    :cond_2e
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatVolt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatVolt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    return v1

    .line 900
    :cond_2f
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    return v1

    .line 901
    :cond_30
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmpHours:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmpHours:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    return v1

    .line 902
    :cond_31
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueDesiredHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueDesiredHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    return v1

    .line 903
    :cond_32
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueMemoryStackFree:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueMemoryStackFree:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    return v1

    :cond_33
    return v0

    :cond_34
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 910
    iget-wide v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 911
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 912
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 913
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput3:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 914
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput4:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 915
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput5:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 916
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput6:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 917
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput7:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 918
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput8:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 919
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput9:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 920
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput10:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 921
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput11:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 922
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput12:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 923
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 924
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 925
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput3:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 926
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput4:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 927
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput5:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 928
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput6:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 929
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput7:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 930
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput8:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 931
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput9:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 932
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput10:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 933
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput11:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 934
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput12:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 935
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 936
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 937
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationZ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 938
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 939
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 940
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthZ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 941
    iget-wide v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueFlags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 942
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueOscFails:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 943
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 944
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 945
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityZ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 946
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 947
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 948
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalZ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 949
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 950
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 951
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroZ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 952
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromTemp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 953
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromPress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 954
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromAlt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 955
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatVolt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 956
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 957
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmpHours:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 958
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueDesiredHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 959
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueMemoryStackFree:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final sueAeroX()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aeroforce in UDB X Axis"
        position = 0x28
        signed = true
        unitSize = 0x2
    .end annotation

    .line 716
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroX:I

    return v0
.end method

.method public final sueAeroY()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aeroforce in UDB Y Axis"
        position = 0x29
        signed = true
        unitSize = 0x2
    .end annotation

    .line 729
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroY:I

    return v0
.end method

.method public final sueAeroZ()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aeroforce in UDB Z axis"
        position = 0x2a
        signed = true
        unitSize = 0x2
    .end annotation

    .line 742
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroZ:I

    return v0
.end method

.method public final sueBaromAlt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE barometer altitude"
        position = 0x2d
        signed = true
        unitSize = 0x4
    .end annotation

    .line 781
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromAlt:I

    return v0
.end method

.method public final sueBaromPress()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE barometer pressure"
        position = 0x2c
        signed = true
        unitSize = 0x4
    .end annotation

    .line 768
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromPress:I

    return v0
.end method

.method public final sueBaromTemp()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE barometer temperature"
        position = 0x2b
        signed = true
        unitSize = 0x2
    .end annotation

    .line 755
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromTemp:I

    return v0
.end method

.method public final sueBatAmp()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE battery current"
        position = 0x2f
        signed = true
        unitSize = 0x2
    .end annotation

    .line 807
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmp:I

    return v0
.end method

.method public final sueBatAmpHours()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE battery milli amp hours used"
        position = 0x30
        signed = true
        unitSize = 0x2
    .end annotation

    .line 820
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmpHours:I

    return v0
.end method

.method public final sueBatVolt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE battery voltage"
        position = 0x2e
        signed = true
        unitSize = 0x2
    .end annotation

    .line 794
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatVolt:I

    return v0
.end method

.method public final sueDesiredHeight()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sue autopilot desired height"
        position = 0x31
        signed = true
        unitSize = 0x2
    .end annotation

    .line 833
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueDesiredHeight:I

    return v0
.end method

.method public final sueFlags()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Status Flags"
        position = 0x20
        unitSize = 0x4
    .end annotation

    .line 609
    iget-wide v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueFlags:J

    return-wide v0
.end method

.method public final sueImuLocationX()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra IMU Location X"
        position = 0x1a
        signed = true
        unitSize = 0x2
    .end annotation

    .line 529
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationX:I

    return v0
.end method

.method public final sueImuLocationY()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra IMU Location Y"
        position = 0x1b
        signed = true
        unitSize = 0x2
    .end annotation

    .line 542
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationY:I

    return v0
.end method

.method public final sueImuLocationZ()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra IMU Location Z"
        position = 0x1c
        signed = true
        unitSize = 0x2
    .end annotation

    .line 555
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationZ:I

    return v0
.end method

.method public final sueImuVelocityX()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra IMU Velocity X"
        position = 0x22
        signed = true
        unitSize = 0x2
    .end annotation

    .line 635
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityX:I

    return v0
.end method

.method public final sueImuVelocityY()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra IMU Velocity Y"
        position = 0x23
        signed = true
        unitSize = 0x2
    .end annotation

    .line 648
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityY:I

    return v0
.end method

.method public final sueImuVelocityZ()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra IMU Velocity Z"
        position = 0x24
        signed = true
        unitSize = 0x2
    .end annotation

    .line 661
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityZ:I

    return v0
.end method

.method public final sueLocationErrorEarthX()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Location Error Earth\n                X"
        position = 0x1d
        signed = true
        unitSize = 0x2
    .end annotation

    .line 569
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthX:I

    return v0
.end method

.method public final sueLocationErrorEarthY()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Location Error Earth\n                Y"
        position = 0x1e
        signed = true
        unitSize = 0x2
    .end annotation

    .line 583
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthY:I

    return v0
.end method

.method public final sueLocationErrorEarthZ()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Location Error Earth\n                Z"
        position = 0x1f
        signed = true
        unitSize = 0x2
    .end annotation

    .line 597
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthZ:I

    return v0
.end method

.method public final sueMemoryStackFree()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Stack Memory Free"
        position = 0x32
        signed = true
        unitSize = 0x2
    .end annotation

    .line 846
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueMemoryStackFree:I

    return v0
.end method

.method public final sueOscFails()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Oscillator Failure Count"
        position = 0x21
        signed = true
        unitSize = 0x2
    .end annotation

    .line 622
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueOscFails:I

    return v0
.end method

.method public final suePwmInput1()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 1"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 217
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput1:I

    return v0
.end method

.method public final suePwmInput10()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 10"
        position = 0xb
        signed = true
        unitSize = 0x2
    .end annotation

    .line 334
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput10:I

    return v0
.end method

.method public final suePwmInput11()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 11"
        position = 0xc
        signed = true
        unitSize = 0x2
    .end annotation

    .line 347
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput11:I

    return v0
.end method

.method public final suePwmInput12()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 12"
        position = 0xd
        signed = true
        unitSize = 0x2
    .end annotation

    .line 360
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput12:I

    return v0
.end method

.method public final suePwmInput2()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 2"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 230
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput2:I

    return v0
.end method

.method public final suePwmInput3()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 3"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 243
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput3:I

    return v0
.end method

.method public final suePwmInput4()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 4"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 256
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput4:I

    return v0
.end method

.method public final suePwmInput5()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 5"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 269
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput5:I

    return v0
.end method

.method public final suePwmInput6()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 6"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 282
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput6:I

    return v0
.end method

.method public final suePwmInput7()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 7"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 295
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput7:I

    return v0
.end method

.method public final suePwmInput8()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 8"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 308
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput8:I

    return v0
.end method

.method public final suePwmInput9()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 9"
        position = 0xa
        signed = true
        unitSize = 0x2
    .end annotation

    .line 321
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput9:I

    return v0
.end method

.method public final suePwmOutput1()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 1"
        position = 0xe
        signed = true
        unitSize = 0x2
    .end annotation

    .line 373
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput1:I

    return v0
.end method

.method public final suePwmOutput10()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 10"
        position = 0x17
        signed = true
        unitSize = 0x2
    .end annotation

    .line 490
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput10:I

    return v0
.end method

.method public final suePwmOutput11()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 11"
        position = 0x18
        signed = true
        unitSize = 0x2
    .end annotation

    .line 503
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput11:I

    return v0
.end method

.method public final suePwmOutput12()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 12"
        position = 0x19
        signed = true
        unitSize = 0x2
    .end annotation

    .line 516
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput12:I

    return v0
.end method

.method public final suePwmOutput2()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 2"
        position = 0xf
        signed = true
        unitSize = 0x2
    .end annotation

    .line 386
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput2:I

    return v0
.end method

.method public final suePwmOutput3()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 3"
        position = 0x10
        signed = true
        unitSize = 0x2
    .end annotation

    .line 399
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput3:I

    return v0
.end method

.method public final suePwmOutput4()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 4"
        position = 0x11
        signed = true
        unitSize = 0x2
    .end annotation

    .line 412
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput4:I

    return v0
.end method

.method public final suePwmOutput5()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 5"
        position = 0x12
        signed = true
        unitSize = 0x2
    .end annotation

    .line 425
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput5:I

    return v0
.end method

.method public final suePwmOutput6()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 6"
        position = 0x13
        signed = true
        unitSize = 0x2
    .end annotation

    .line 438
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput6:I

    return v0
.end method

.method public final suePwmOutput7()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 7"
        position = 0x14
        signed = true
        unitSize = 0x2
    .end annotation

    .line 451
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput7:I

    return v0
.end method

.method public final suePwmOutput8()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 8"
        position = 0x15
        signed = true
        unitSize = 0x2
    .end annotation

    .line 464
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput8:I

    return v0
.end method

.method public final suePwmOutput9()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 9"
        position = 0x16
        signed = true
        unitSize = 0x2
    .end annotation

    .line 477
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput9:I

    return v0
.end method

.method public final sueTime()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Time"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 204
    iget-wide v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueTime:J

    return-wide v0
.end method

.method public final sueWaypointGoalX()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Current Waypoint Goal\n                X"
        position = 0x25
        signed = true
        unitSize = 0x2
    .end annotation

    .line 675
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalX:I

    return v0
.end method

.method public final sueWaypointGoalY()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Current Waypoint Goal\n                Y"
        position = 0x26
        signed = true
        unitSize = 0x2
    .end annotation

    .line 689
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalY:I

    return v0
.end method

.method public final sueWaypointGoalZ()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Current Waypoint Goal\n                Z"
        position = 0x27
        signed = true
        unitSize = 0x2
    .end annotation

    .line 703
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalZ:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerialUdbExtraF2B{sueTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmInput1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmInput2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmInput3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmInput4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmInput5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmInput6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmInput7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput7:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmInput8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmInput9="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput9:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmInput10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput10:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmInput11="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput11:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmInput12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmInput12:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmOutput1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmOutput2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmOutput3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmOutput4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmOutput5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmOutput6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmOutput7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput7:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmOutput8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmOutput9="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput9:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmOutput10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput10:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmOutput11="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput11:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePwmOutput12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->suePwmOutput12:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueImuLocationX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueImuLocationY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueImuLocationZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuLocationZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueLocationErrorEarthX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueLocationErrorEarthY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueLocationErrorEarthZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueLocationErrorEarthZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueFlags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sueOscFails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueOscFails:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueImuVelocityX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueImuVelocityY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueImuVelocityZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueImuVelocityZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueWaypointGoalX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueWaypointGoalY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueWaypointGoalZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueWaypointGoalZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueAeroX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueAeroY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueAeroZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueAeroZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueBaromTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueBaromPress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromPress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueBaromAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBaromAlt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueBatVolt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatVolt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueBatAmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueBatAmpHours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueBatAmpHours:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueDesiredHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueDesiredHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueMemoryStackFree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;->sueMemoryStackFree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;
.super Ljava/lang/Object;
.source "UavcanNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/UavcanNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private hwUniqueId:[B

.field private hwVersionMajor:I

.field private hwVersionMinor:I

.field private name:Ljava/lang/String;

.field private swVcsCommit:J

.field private swVersionMajor:I

.field private swVersionMinor:I

.field private timeUsec:Ljava/math/BigInteger;

.field private uptimeSec:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/UavcanNodeInfo;
    .locals 14

    .line 409
    new-instance v13, Lio/dronefleet/mavlink/common/UavcanNodeInfo;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-wide v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->uptimeSec:J

    iget-object v4, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->name:Ljava/lang/String;

    iget v5, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->hwVersionMajor:I

    iget v6, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->hwVersionMinor:I

    iget-object v7, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->hwUniqueId:[B

    iget v8, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->swVersionMajor:I

    iget v9, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->swVersionMinor:I

    iget-wide v10, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->swVcsCommit:J

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/common/UavcanNodeInfo;-><init>(Ljava/math/BigInteger;JLjava/lang/String;II[BIIJLio/dronefleet/mavlink/common/UavcanNodeInfo$1;)V

    return-object v13
.end method

.method public final hwUniqueId([B)Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Hardware unique 128-bit ID."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 363
    iput-object p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->hwUniqueId:[B

    return-object p0
.end method

.method public final hwVersionMajor(I)Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Hardware major version number."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 336
    iput p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->hwVersionMajor:I

    return-object p0
.end method

.method public final hwVersionMinor(I)Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Hardware minor version number."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 349
    iput p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->hwVersionMinor:I

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x50
        description = "Node name string. For example, \"sapog.px4.io\"."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 323
    iput-object p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final swVcsCommit(J)Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Version control system (VCS) revision\n                identifier (e.g. git short commit hash). Zero if unknown."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 404
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->swVcsCommit:J

    return-object p0
.end method

.method public final swVersionMajor(I)Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Software major version number."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 376
    iput p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->swVersionMajor:I

    return-object p0
.end method

.method public final swVersionMinor(I)Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Software minor version number."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 389
    iput p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->swVersionMinor:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 295
    iput-object p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final uptimeSec(J)Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since the start-up of the\n                node."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 309
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;->uptimeSec:J

    return-object p0
.end method

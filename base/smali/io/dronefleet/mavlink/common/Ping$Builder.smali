.class public final Lio/dronefleet/mavlink/common/Ping$Builder;
.super Ljava/lang/Object;
.source "Ping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/Ping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private seq:J

.field private targetComponent:I

.field private targetSystem:I

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/Ping;
    .locals 8

    .line 229
    new-instance v7, Lio/dronefleet/mavlink/common/Ping;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/Ping$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-wide v2, p0, Lio/dronefleet/mavlink/common/Ping$Builder;->seq:J

    iget v4, p0, Lio/dronefleet/mavlink/common/Ping$Builder;->targetSystem:I

    iget v5, p0, Lio/dronefleet/mavlink/common/Ping$Builder;->targetComponent:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/Ping;-><init>(Ljava/math/BigInteger;JIILio/dronefleet/mavlink/common/Ping$1;)V

    return-object v7
.end method

.method public final seq(J)Lio/dronefleet/mavlink/common/Ping$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PING sequence"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 192
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Ping$Builder;->seq:J

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/Ping$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0: request ping from all receiving\n                components. If greater than 0: message is a ping response and number is the\n                component id of the requesting component."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 224
    iput p1, p0, Lio/dronefleet/mavlink/common/Ping$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/Ping$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0: request ping from all receiving systems.\n                If greater than 0: message is a ping response and number is the system id of the\n                requesting system"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 208
    iput p1, p0, Lio/dronefleet/mavlink/common/Ping$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/Ping$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 179
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Ping$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

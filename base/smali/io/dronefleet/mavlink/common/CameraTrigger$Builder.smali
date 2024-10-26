.class public final Lio/dronefleet/mavlink/common/CameraTrigger$Builder;
.super Ljava/lang/Object;
.source "CameraTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/CameraTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private seq:J

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/CameraTrigger;
    .locals 5

    .line 141
    new-instance v0, Lio/dronefleet/mavlink/common/CameraTrigger;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraTrigger$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-wide v2, p0, Lio/dronefleet/mavlink/common/CameraTrigger$Builder;->seq:J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/common/CameraTrigger;-><init>(Ljava/math/BigInteger;JLio/dronefleet/mavlink/common/CameraTrigger$1;)V

    return-object v0
.end method

.method public final seq(J)Lio/dronefleet/mavlink/common/CameraTrigger$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Image frame sequence"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 136
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/CameraTrigger$Builder;->seq:J

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/CameraTrigger$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp for image frame (UNIX Epoch\n                time or time since system boot). The receiving end can infer timestamp format (since\n                1.1.1970 or since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 123
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CameraTrigger$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.class public final Lio/dronefleet/mavlink/common/SetupSigning$Builder;
.super Ljava/lang/Object;
.source "SetupSigning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SetupSigning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private initialTimestamp:Ljava/math/BigInteger;

.field private secretKey:[B

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/SetupSigning;
    .locals 7

    .line 208
    new-instance v6, Lio/dronefleet/mavlink/common/SetupSigning;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetupSigning$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/SetupSigning$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/SetupSigning$Builder;->secretKey:[B

    iget-object v4, p0, Lio/dronefleet/mavlink/common/SetupSigning$Builder;->initialTimestamp:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/SetupSigning;-><init>(II[BLjava/math/BigInteger;Lio/dronefleet/mavlink/common/SetupSigning$1;)V

    return-object v6
.end method

.method public final initialTimestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/SetupSigning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "initial timestamp"
        position = 0x4
        unitSize = 0x8
    .end annotation

    .line 203
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetupSigning$Builder;->initialTimestamp:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final secretKey([B)Lio/dronefleet/mavlink/common/SetupSigning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "signing key"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 190
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetupSigning$Builder;->secretKey:[B

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/SetupSigning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "component ID of the target"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 176
    iput p1, p0, Lio/dronefleet/mavlink/common/SetupSigning$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/SetupSigning$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "system id of the target"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 163
    iput p1, p0, Lio/dronefleet/mavlink/common/SetupSigning$Builder;->targetSystem:I

    return-object p0
.end method

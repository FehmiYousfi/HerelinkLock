.class public final Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;
.super Ljava/lang/Object;
.source "ChangeOperatorControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ChangeOperatorControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private controlRequest:I

.field private passkey:Ljava/lang/String;

.field private targetSystem:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ChangeOperatorControl;
    .locals 7

    .line 223
    new-instance v6, Lio/dronefleet/mavlink/common/ChangeOperatorControl;

    iget v1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;->controlRequest:I

    iget v3, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;->version:I

    iget-object v4, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;->passkey:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/ChangeOperatorControl;-><init>(IIILjava/lang/String;Lio/dronefleet/mavlink/common/ChangeOperatorControl$1;)V

    return-object v6
.end method

.method public final controlRequest(I)Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0: request control of this MAV, 1: Release\n                control of this MAV"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 183
    iput p1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;->controlRequest:I

    return-object p0
.end method

.method public final passkey(Ljava/lang/String;)Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x19
        description = "Password / Key, depending on version plaintext or\n                encrypted. 25 or less characters, NULL terminated. The characters may involve A-Z,\n                a-z, 0-9, and \"!?,.-\""
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 218
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;->passkey:Ljava/lang/String;

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System the GCS requests control for"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 169
    iput p1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;->targetSystem:I

    return-object p0
.end method

.method public final version(I)Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0: key as plaintext, 1-255: future,\n                different hashing/encryption variants. The GCS should in general use the safest mode\n                possible initially and then gradually move down the encryption level if it gets a\n                NACK message indicating an encryption mismatch."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 201
    iput p1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControl$Builder;->version:I

    return-object p0
.end method

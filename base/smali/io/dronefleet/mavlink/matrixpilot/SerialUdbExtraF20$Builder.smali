.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF20.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueNumberOfInputs:I

.field private sueTrimValueInput1:I

.field private sueTrimValueInput10:I

.field private sueTrimValueInput11:I

.field private sueTrimValueInput12:I

.field private sueTrimValueInput2:I

.field private sueTrimValueInput3:I

.field private sueTrimValueInput4:I

.field private sueTrimValueInput5:I

.field private sueTrimValueInput6:I

.field private sueTrimValueInput7:I

.field private sueTrimValueInput8:I

.field private sueTrimValueInput9:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;
    .locals 17

    move-object/from16 v0, p0

    .line 551
    new-instance v16, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;

    iget v2, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueNumberOfInputs:I

    iget v3, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput1:I

    iget v4, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput2:I

    iget v5, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput3:I

    iget v6, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput4:I

    iget v7, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput5:I

    iget v8, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput6:I

    iget v9, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput7:I

    iget v10, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput8:I

    iget v11, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput9:I

    iget v12, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput10:I

    iget v13, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput11:I

    iget v14, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput12:I

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;-><init>(IIIIIIIIIIIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$1;)V

    return-object v16
.end method

.method public final sueNumberOfInputs(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Number of Input Channels"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 375
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueNumberOfInputs:I

    return-object p0
.end method

.method public final sueTrimValueInput1(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 1"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 389
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput1:I

    return-object p0
.end method

.method public final sueTrimValueInput10(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input\n                10"
        position = 0xb
        signed = true
        unitSize = 0x2
    .end annotation

    .line 516
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput10:I

    return-object p0
.end method

.method public final sueTrimValueInput11(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input\n                11"
        position = 0xc
        signed = true
        unitSize = 0x2
    .end annotation

    .line 531
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput11:I

    return-object p0
.end method

.method public final sueTrimValueInput12(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input\n                12"
        position = 0xd
        signed = true
        unitSize = 0x2
    .end annotation

    .line 546
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput12:I

    return-object p0
.end method

.method public final sueTrimValueInput2(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 2"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 403
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput2:I

    return-object p0
.end method

.method public final sueTrimValueInput3(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 3"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 417
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput3:I

    return-object p0
.end method

.method public final sueTrimValueInput4(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 4"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 431
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput4:I

    return-object p0
.end method

.method public final sueTrimValueInput5(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 5"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 445
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput5:I

    return-object p0
.end method

.method public final sueTrimValueInput6(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 6"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 459
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput6:I

    return-object p0
.end method

.method public final sueTrimValueInput7(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 7"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 473
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput7:I

    return-object p0
.end method

.method public final sueTrimValueInput8(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 8"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 487
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput8:I

    return-object p0
.end method

.method public final sueTrimValueInput9(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 9"
        position = 0xa
        signed = true
        unitSize = 0x2
    .end annotation

    .line 501
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;->sueTrimValueInput9:I

    return-object p0
.end method

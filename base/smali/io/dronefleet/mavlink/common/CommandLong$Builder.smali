.class public final Lio/dronefleet/mavlink/common/CommandLong$Builder;
.super Ljava/lang/Object;
.source "CommandLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/CommandLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private command:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCmd;",
            ">;"
        }
    .end annotation
.end field

.field private confirmation:I

.field private param1:F

.field private param2:F

.field private param3:F

.field private param4:F

.field private param5:F

.field private param6:F

.field private param7:F

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/CommandLong;
    .locals 14

    .line 483
    new-instance v13, Lio/dronefleet/mavlink/common/CommandLong;

    iget v1, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->command:Lio/dronefleet/mavlink/util/EnumValue;

    iget v4, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->confirmation:I

    iget v5, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param1:F

    iget v6, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param2:F

    iget v7, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param3:F

    iget v8, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param4:F

    iget v9, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param5:F

    iget v10, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param6:F

    iget v11, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param7:F

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/common/CommandLong;-><init>(IILio/dronefleet/mavlink/util/EnumValue;IFFFFFFFLio/dronefleet/mavlink/common/CommandLong$1;)V

    return-object v13
.end method

.method public final command(Lio/dronefleet/mavlink/common/MavCmd;)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0

    .line 359
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandLong$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandLong$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCmd;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CommandLong$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Command ID (of command to send)."
        enumType = Lio/dronefleet/mavlink/common/MavCmd;
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 351
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->command:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final command(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CommandLong$Builder;"
        }
    .end annotation

    .line 373
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandLong$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandLong$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs command([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0

    .line 366
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandLong$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandLong$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final confirmation(I)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0: First transmission of this command. 1-255:\n                Confirmation transmissions (e.g. for kill command)"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 387
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->confirmation:I

    return-object p0
.end method

.method public final param1(F)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 1 (for the specific command)."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 400
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param1:F

    return-object p0
.end method

.method public final param2(F)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 2 (for the specific command)."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 413
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param2:F

    return-object p0
.end method

.method public final param3(F)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 3 (for the specific command)."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 426
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param3:F

    return-object p0
.end method

.method public final param4(F)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 4 (for the specific command)."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 439
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param4:F

    return-object p0
.end method

.method public final param5(F)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 5 (for the specific command)."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 452
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param5:F

    return-object p0
.end method

.method public final param6(F)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 6 (for the specific command)."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 465
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param6:F

    return-object p0
.end method

.method public final param7(F)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 7 (for the specific command)."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 478
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param7:F

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component which should execute the\n                command, 0 for all components"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 337
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/CommandLong$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System which should execute the command"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 323
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandLong$Builder;->targetSystem:I

    return-object p0
.end method

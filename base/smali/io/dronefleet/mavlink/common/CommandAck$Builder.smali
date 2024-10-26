.class public final Lio/dronefleet/mavlink/common/CommandAck$Builder;
.super Ljava/lang/Object;
.source "CommandAck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/CommandAck;
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

.field private progress:I

.field private result:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavResult;",
            ">;"
        }
    .end annotation
.end field

.field private resultParam2:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/CommandAck;
    .locals 9

    .line 353
    new-instance v8, Lio/dronefleet/mavlink/common/CommandAck;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/CommandAck$Builder;->command:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/CommandAck$Builder;->result:Lio/dronefleet/mavlink/util/EnumValue;

    iget v3, p0, Lio/dronefleet/mavlink/common/CommandAck$Builder;->progress:I

    iget v4, p0, Lio/dronefleet/mavlink/common/CommandAck$Builder;->resultParam2:I

    iget v5, p0, Lio/dronefleet/mavlink/common/CommandAck$Builder;->targetSystem:I

    iget v6, p0, Lio/dronefleet/mavlink/common/CommandAck$Builder;->targetComponent:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/CommandAck;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIILio/dronefleet/mavlink/common/CommandAck$1;)V

    return-object v8
.end method

.method public final command(Lio/dronefleet/mavlink/common/MavCmd;)Lio/dronefleet/mavlink/common/CommandAck$Builder;
    .locals 0

    .line 235
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandAck$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandAck$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCmd;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CommandAck$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Command ID (of acknowledged\n                command)."
        enumType = Lio/dronefleet/mavlink/common/MavCmd;
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 227
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CommandAck$Builder;->command:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final command(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/CommandAck$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CommandAck$Builder;"
        }
    .end annotation

    .line 249
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandAck$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs command([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/CommandAck$Builder;
    .locals 0

    .line 242
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandAck$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final progress(I)Lio/dronefleet/mavlink/common/CommandAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Also used as result_param1, it can be set with a\n                enum containing the errors reasons of why the command was denied or the progress\n                percentage or 255 if unknown the progress when result is MAV_RESULT_IN_PROGRESS."
        extension = true
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 301
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandAck$Builder;->progress:I

    return-object p0
.end method

.method public final result(Lio/dronefleet/mavlink/common/MavResult;)Lio/dronefleet/mavlink/common/CommandAck$Builder;
    .locals 0

    .line 270
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandAck$Builder;->result(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final result(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandAck$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavResult;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CommandAck$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Result of command."
        enumType = Lio/dronefleet/mavlink/common/MavResult;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 262
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CommandAck$Builder;->result:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final result(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/CommandAck$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CommandAck$Builder;"
        }
    .end annotation

    .line 284
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandAck$Builder;->result(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs result([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/CommandAck$Builder;
    .locals 0

    .line 277
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandAck$Builder;->result(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final resultParam2(I)Lio/dronefleet/mavlink/common/CommandAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Additional parameter of the result, example:\n                which parameter of MAV_CMD_NAV_WAYPOINT caused it to be denied."
        extension = true
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 318
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandAck$Builder;->resultParam2:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/CommandAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component which requested the command to\n                be executed"
        extension = true
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 348
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandAck$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/CommandAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System which requested the command to be\n                executed"
        extension = true
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 333
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandAck$Builder;->targetSystem:I

    return-object p0
.end method

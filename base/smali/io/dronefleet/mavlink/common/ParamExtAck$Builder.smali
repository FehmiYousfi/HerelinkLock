.class public final Lio/dronefleet/mavlink/common/ParamExtAck$Builder;
.super Ljava/lang/Object;
.source "ParamExtAck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ParamExtAck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private paramId:Ljava/lang/String;

.field private paramResult:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/ParamAck;",
            ">;"
        }
    .end annotation
.end field

.field private paramType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavParamExtType;",
            ">;"
        }
    .end annotation
.end field

.field private paramValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ParamExtAck;
    .locals 7

    .line 268
    new-instance v6, Lio/dronefleet/mavlink/common/ParamExtAck;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramId:Ljava/lang/String;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramValue:Ljava/lang/String;

    iget-object v3, p0, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v4, p0, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramResult:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/ParamExtAck;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/ParamExtAck$1;)V

    return-object v6
.end method

.method public final paramId(Ljava/lang/String;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Parameter id, terminated by NULL if the length is\n                less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the\n                length is exactly 16 chars - applications have to provide 16+1 bytes storage if the\n                ID is stored as string"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 178
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramId:Ljava/lang/String;

    return-object p0
.end method

.method public final paramResult(Lio/dronefleet/mavlink/common/ParamAck;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;
    .locals 0

    .line 250
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramResult(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final paramResult(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/ParamAck;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ParamExtAck$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Result code."
        enumType = Lio/dronefleet/mavlink/common/ParamAck;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 242
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramResult:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final paramResult(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ParamExtAck$Builder;"
        }
    .end annotation

    .line 264
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramResult(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs paramResult([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;
    .locals 0

    .line 257
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramResult(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final paramType(Lio/dronefleet/mavlink/common/MavParamExtType;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;
    .locals 0

    .line 215
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavParamExtType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ParamExtAck$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter type."
        enumType = Lio/dronefleet/mavlink/common/MavParamExtType;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 207
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final paramType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ParamExtAck$Builder;"
        }
    .end annotation

    .line 229
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs paramType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;
    .locals 0

    .line 222
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final paramValue(Ljava/lang/String;)Lio/dronefleet/mavlink/common/ParamExtAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x80
        description = "Parameter value (new value if\n                PARAM_ACK_ACCEPTED, current value otherwise)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 193
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamExtAck$Builder;->paramValue:Ljava/lang/String;

    return-object p0
.end method

.class public final Lio/dronefleet/mavlink/common/ParamExtSet$Builder;
.super Ljava/lang/Object;
.source "ParamExtSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ParamExtSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private paramId:Ljava/lang/String;

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

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ParamExtSet;
    .locals 8

    .line 285
    new-instance v7, Lio/dronefleet/mavlink/common/ParamExtSet;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamExtSet$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/ParamExtSet$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/ParamExtSet$Builder;->paramId:Ljava/lang/String;

    iget-object v4, p0, Lio/dronefleet/mavlink/common/ParamExtSet$Builder;->paramValue:Ljava/lang/String;

    iget-object v5, p0, Lio/dronefleet/mavlink/common/ParamExtSet$Builder;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/ParamExtSet;-><init>(IILjava/lang/String;Ljava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/ParamExtSet$1;)V

    return-object v7
.end method

.method public final paramId(Ljava/lang/String;)Lio/dronefleet/mavlink/common/ParamExtSet$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Parameter id, terminated by NULL if the length is\n                less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the\n                length is exactly 16 chars - applications have to provide 16+1 bytes storage if the\n                ID is stored as string"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 231
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamExtSet$Builder;->paramId:Ljava/lang/String;

    return-object p0
.end method

.method public final paramType(Lio/dronefleet/mavlink/common/MavParamExtType;)Lio/dronefleet/mavlink/common/ParamExtSet$Builder;
    .locals 0

    .line 267
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamExtSet$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavParamExtType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ParamExtSet$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter type."
        enumType = Lio/dronefleet/mavlink/common/MavParamExtType;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 259
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamExtSet$Builder;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final paramType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/ParamExtSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ParamExtSet$Builder;"
        }
    .end annotation

    .line 281
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamExtSet$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs paramType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/ParamExtSet$Builder;
    .locals 0

    .line 274
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamExtSet$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final paramValue(Ljava/lang/String;)Lio/dronefleet/mavlink/common/ParamExtSet$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x80
        description = "Parameter value"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 245
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamExtSet$Builder;->paramValue:Ljava/lang/String;

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/ParamExtSet$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 212
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamExtSet$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/ParamExtSet$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 199
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamExtSet$Builder;->targetSystem:I

    return-object p0
.end method

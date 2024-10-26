.class public Lio/dronefleet/mavlink/util/reflection/MavlinkReflection;
.super Ljava/lang/Object;
.source "MavlinkReflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntryByValue(Ljava/lang/Class;I)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$dEBiwrw6lp2kFWXDqvEF7e5A3Uc;->INSTANCE:Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$dEBiwrw6lp2kFWXDqvEF7e5A3Uc;

    .line 43
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$_0Nio_dqLjXegD2_zEx4FQ7GoG0;->INSTANCE:Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$_0Nio_dqLjXegD2_zEx4FQ7GoG0;

    .line 44
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$Z3j7QqPBKUU27U4Xo_EFNWpNdoI;

    invoke-direct {v1, p1}, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$Z3j7QqPBKUU27U4Xo_EFNWpNdoI;-><init>(I)V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$-ihgzJ0aJGgt2Bi71uZ1HvqqeKM;->INSTANCE:Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$-ihgzJ0aJGgt2Bi71uZ1HvqqeKM;

    .line 46
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$IZXQLHjA7Oa5XYvgGw5dfIWbYWs;

    invoke-direct {v0, p0}, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$IZXQLHjA7Oa5XYvgGw5dfIWbYWs;-><init>(Ljava/lang/Class;)V

    .line 53
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 54
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static getEnumEntry(Ljava/lang/Enum;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum;",
            ")",
            "Ljava/util/Optional<",
            "Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$dEBiwrw6lp2kFWXDqvEF7e5A3Uc;->INSTANCE:Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$dEBiwrw6lp2kFWXDqvEF7e5A3Uc;

    .line 28
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$E9fp_fs8I_sZzxCxfDS-CUujJCU;->INSTANCE:Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$E9fp_fs8I_sZzxCxfDS-CUujJCU;

    .line 29
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$jAeLV5uYf2FrDOSLeFZkoScy9WI;

    invoke-direct {v1, p0}, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$jAeLV5uYf2FrDOSLeFZkoScy9WI;-><init>(Ljava/lang/Enum;)V

    .line 30
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$xMRCmrkiMGcQ8wcJArpBSmhN-aw;->INSTANCE:Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$xMRCmrkiMGcQ8wcJArpBSmhN-aw;

    .line 38
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static getEnumValue(Ljava/lang/Enum;)I
    .locals 1

    .line 20
    invoke-static {p0}, Lio/dronefleet/mavlink/util/reflection/MavlinkReflection;->getEnumEntry(Ljava/lang/Enum;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$TIWlywfTrTDBf3fH29qSo1ExOuQ;->INSTANCE:Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$TIWlywfTrTDBf3fH29qSo1ExOuQ;

    .line 21
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;

    .line 23
    invoke-interface {p0}, Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;->value()I

    move-result p0

    return p0
.end method

.method public static getMessageInfo(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Optional<",
            "Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static isMavlinkMessage(Ljava/lang/Object;)Z
    .locals 0

    .line 58
    invoke-static {p0}, Lio/dronefleet/mavlink/util/reflection/MavlinkReflection;->getMessageInfo(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$IZXQLHjA7Oa5XYvgGw5dfIWbYWs(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$dEBiwrw6lp2kFWXDqvEF7e5A3Uc(Ljava/lang/reflect/Field;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getEntryByValue$4(Ljava/lang/reflect/Field;)Z
    .locals 1

    .line 44
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getEntryByValue$5(ILjava/lang/reflect/Field;)Z
    .locals 1

    .line 45
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;

    invoke-interface {p1}, Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;->value()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getEntryByValue$6(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$getEnumEntry$1(Ljava/lang/reflect/Field;)Z
    .locals 1

    .line 29
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getEnumEntry$2(Ljava/lang/Enum;Ljava/lang/reflect/Field;)Z
    .locals 1

    const/4 v0, 0x0

    .line 32
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$getEnumEntry$3(Ljava/lang/reflect/Field;)Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
    .locals 1

    .line 38
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;

    return-object p0
.end method

.method static synthetic lambda$getEnumValue$0()Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified entry is not annotated with @MavlinkEntryInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

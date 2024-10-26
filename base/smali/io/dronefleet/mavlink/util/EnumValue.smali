.class public Lio/dronefleet/mavlink/util/EnumValue;
.super Ljava/lang/Object;
.source "EnumValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final builderMethodsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/dronefleet/mavlink/util/EnumValue;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final entry:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/dronefleet/mavlink/util/EnumValue;->builderMethodsCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lio/dronefleet/mavlink/util/EnumValue;->value:I

    .line 53
    iput-object p2, p0, Lio/dronefleet/mavlink/util/EnumValue;->entry:Ljava/lang/Enum;

    return-void
.end method

.method public static create(I)Lio/dronefleet/mavlink/util/EnumValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum;",
            ">(I)",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "TT;>;"
        }
    .end annotation

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/dronefleet/mavlink/util/EnumValue;-><init>(ILjava/lang/Enum;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Class;I)Lio/dronefleet/mavlink/util/EnumValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "TT;>;"
        }
    .end annotation

    .line 38
    sget-object v0, Lio/dronefleet/mavlink/util/EnumValue;->builderMethodsCache:Ljava/util/Map;

    sget-object v1, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$W0cOnsQWw6eLUI9JVjgPWUd_gzk;->INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$W0cOnsQWw6eLUI9JVjgPWUd_gzk;

    .line 39
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$vK_KALSgOr--rvAgiu3gQHYYygA;

    invoke-direct {v2, p1, p0}, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$vK_KALSgOr--rvAgiu3gQHYYygA;-><init>(ILjava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public static create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "TT;>;"
        }
    .end annotation

    .line 25
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lio/dronefleet/mavlink/util/-$$Lambda$fqZkVvagl0pZ1inrJ2zv5KG02x4;->INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$fqZkVvagl0pZ1inrJ2zv5KG02x4;

    .line 26
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    sget-object v0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$zxt7_RBtB4mMek3ytvlPfPK2xeA;->INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$zxt7_RBtB4mMek3ytvlPfPK2xeA;

    .line 27
    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p0

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    .line 25
    invoke-static {p0}, Lio/dronefleet/mavlink/util/EnumValue;->create(I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    return-object p0
.end method

.method public static varargs create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum;",
            ">([",
            "Ljava/lang/Enum;",
            ")",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "TT;>;"
        }
    .end annotation

    .line 21
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$create$0(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method static synthetic lambda$create$1(Ljava/lang/Class;)Ljava/util/Map;
    .locals 0

    .line 39
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$create$2(ILjava/lang/Class;Ljava/lang/Integer;)Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1

    .line 41
    new-instance p2, Lio/dronefleet/mavlink/util/EnumValue;

    .line 43
    invoke-static {p1, p0}, Lio/dronefleet/mavlink/util/reflection/MavlinkReflection;->getEntryByValue(Ljava/lang/Class;I)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    invoke-direct {p2, p0, p1}, Lio/dronefleet/mavlink/util/EnumValue;-><init>(ILjava/lang/Enum;)V

    return-object p2
.end method

.method static synthetic lambda$flagsEnabled$4(I)Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    .line 74
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum;",
            ">(TT;)",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "TT;>;"
        }
    .end annotation

    .line 16
    invoke-static {p0}, Lio/dronefleet/mavlink/util/reflection/MavlinkReflection;->getEnumValue(Ljava/lang/Enum;)I

    move-result v0

    .line 17
    new-instance v1, Lio/dronefleet/mavlink/util/EnumValue;

    invoke-direct {v1, v0, p0}, Lio/dronefleet/mavlink/util/EnumValue;-><init>(ILjava/lang/Enum;)V

    return-object v1
.end method


# virtual methods
.method public entry()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lio/dronefleet/mavlink/util/EnumValue;->entry:Ljava/lang/Enum;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/util/EnumValue;

    .line 86
    iget v2, p0, Lio/dronefleet/mavlink/util/EnumValue;->value:I

    iget v3, p1, Lio/dronefleet/mavlink/util/EnumValue;->value:I

    if-eq v2, v3, :cond_2

    return v1

    .line 87
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/util/EnumValue;->entry:Ljava/lang/Enum;

    iget-object p1, p1, Lio/dronefleet/mavlink/util/EnumValue;->entry:Ljava/lang/Enum;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public varargs flagsEnabled([I)Z
    .locals 1

    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$Iou3iVqG48OEz_YvR1s7U-p85io;

    invoke-direct {v0, p0}, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$Iou3iVqG48OEz_YvR1s7U-p85io;-><init>(Lio/dronefleet/mavlink/util/EnumValue;)V

    .line 73
    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    sget-object v0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$HlqHnErmfsPhUJl12YSfE3NhL1o;->INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$HlqHnErmfsPhUJl12YSfE3NhL1o;

    .line 74
    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x1

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public varargs flagsEnabled([Ljava/lang/Enum;)Z
    .locals 1

    .line 65
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lio/dronefleet/mavlink/util/-$$Lambda$kYmrdDvSSdWUsDoWsBxqOlpgXbc;->INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$kYmrdDvSSdWUsDoWsBxqOlpgXbc;

    .line 66
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    .line 67
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 68
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/util/EnumValue;->flagsEnabled([I)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 92
    iget v0, p0, Lio/dronefleet/mavlink/util/EnumValue;->value:I

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-object v1, p0, Lio/dronefleet/mavlink/util/EnumValue;->entry:Ljava/lang/Enum;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic lambda$flagsEnabled$3$EnumValue(I)Z
    .locals 1

    .line 73
    iget v0, p0, Lio/dronefleet/mavlink/util/EnumValue;->value:I

    and-int/2addr v0, p1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnumValue{value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/util/EnumValue;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", entry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/util/EnumValue;->entry:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 57
    iget v0, p0, Lio/dronefleet/mavlink/util/EnumValue;->value:I

    return v0
.end method

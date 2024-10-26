.class public Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;
.super Ljava/lang/Object;
.source "ReflectionPayloadSerializer.java"

# interfaces
.implements Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadSerializer;


# static fields
.field private static final builderpayloadlengthCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final wireComparator:Lio/dronefleet/mavlink/util/WireFieldInfoComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/util/WireFieldInfoComparator;

    invoke-direct {v0}, Lio/dronefleet/mavlink/util/WireFieldInfoComparator;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->wireComparator:Lio/dronefleet/mavlink/util/WireFieldInfoComparator;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->builderpayloadlengthCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$null$0(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 39
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$null$1(Ljava/lang/reflect/Method;)Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
    .locals 1

    .line 40
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    return-object p0
.end method

.method static synthetic lambda$null$2(Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;)I
    .locals 2

    .line 41
    invoke-interface {p0}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->unitSize()I

    move-result v0

    invoke-interface {p0}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->arraySize()I

    move-result p0

    const/4 v1, 0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method static synthetic lambda$null$6(II)I
    .locals 0

    add-int/2addr p0, p1

    return p0
.end method

.method static synthetic lambda$serialize$3(Ljava/lang/Class;)Ljava/lang/Integer;
    .locals 1

    .line 38
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$xPeSbrWloU5wSnOLxAugK8gO-1c;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$xPeSbrWloU5wSnOLxAugK8gO-1c;

    .line 39
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$g-zgZc648on8grdp2uKyi9hcywY;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$g-zgZc648on8grdp2uKyi9hcywY;

    .line 40
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$6XWu-1Xh3BoH0gJ3adompjnVtKw;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$6XWu-1Xh3BoH0gJ3adompjnVtKw;

    .line 41
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 42
    invoke-interface {p0}, Ljava/util/stream/IntStream;->sum()I

    move-result p0

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$serialize$4(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 51
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$serialize$5(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .locals 1

    .line 53
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    .line 54
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    .line 55
    sget-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->wireComparator:Lio/dronefleet/mavlink/util/WireFieldInfoComparator;

    invoke-virtual {v0, p0, p1}, Lio/dronefleet/mavlink/util/WireFieldInfoComparator;->compare(Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;)I

    move-result p0

    return p0
.end method

.method private write(D[BII)V
    .locals 1

    sub-int/2addr p5, p4

    const/16 v0, 0x8

    if-ne p5, v0, :cond_0

    .line 121
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object p5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 122
    invoke-virtual {p3, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 123
    invoke-virtual {p3, p4, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-void

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length != 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private write(F[BII)V
    .locals 1

    sub-int/2addr p4, p3

    const/4 v0, 0x4

    if-ne p4, v0, :cond_0

    .line 114
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object p4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 115
    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 116
    invoke-virtual {p2, p3, p1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-void

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length != 4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private write(J[BII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge p4, p5, :cond_0

    mul-int/lit8 v1, v0, 0x8

    shr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 104
    aput-byte v1, p3, p4

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private write(Lio/dronefleet/mavlink/util/EnumValue;[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "+",
            "Ljava/lang/Enum;",
            ">;[BII)V"
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result p1

    int-to-long v1, p1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(J[BII)V

    return-void
.end method

.method private write(Ljava/lang/Enum;[BII)V
    .locals 1

    .line 127
    invoke-static {p1}, Lio/dronefleet/mavlink/util/reflection/MavlinkReflection;->getEnumEntry(Ljava/lang/Enum;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$CFp5ullB19mbxf936taqZbLRRWs;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$CFp5ullB19mbxf936taqZbLRRWs;

    .line 128
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$KwQzTdaK7zOC1STfhIm9jN-NESg;

    invoke-direct {v0, p0, p2, p3, p4}, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$KwQzTdaK7zOC1STfhIm9jN-NESg;-><init>(Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;[BII)V

    .line 129
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private write(Ljava/lang/Object;[BIII)V
    .locals 8

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 77
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(J[BII)V

    goto/16 :goto_0

    .line 79
    :cond_0
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(J[BII)V

    goto/16 :goto_0

    .line 81
    :cond_1
    const-class v1, Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(Ljava/math/BigInteger;[BII)V

    goto/16 :goto_0

    .line 83
    :cond_2
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(F[BII)V

    goto/16 :goto_0

    .line 85
    :cond_3
    const-class v1, Ljava/lang/Double;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(D[BII)V

    goto :goto_0

    .line 87
    :cond_4
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 88
    check-cast p1, Ljava/lang/Enum;

    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(Ljava/lang/Enum;[BII)V

    goto :goto_0

    .line 89
    :cond_5
    const-class v1, Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 90
    check-cast p1, Lio/dronefleet/mavlink/util/EnumValue;

    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(Lio/dronefleet/mavlink/util/EnumValue;[BII)V

    goto :goto_0

    .line 91
    :cond_6
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 92
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(Ljava/lang/String;[BII)V

    goto :goto_0

    .line 93
    :cond_7
    const-class v1, [B

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 94
    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write([B[BII)V

    goto :goto_0

    .line 95
    :cond_8
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 96
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(Ljava/util/List;[BIII)V

    :goto_0
    return-void

    .line 98
    :cond_9
    new-instance p1, Lio/dronefleet/mavlink/serialization/MavlinkSerializationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unrecognized field type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/dronefleet/mavlink/serialization/MavlinkSerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private write(Ljava/lang/String;[BII)V
    .locals 1

    .line 137
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write([B[BII)V

    return-void
.end method

.method private write(Ljava/math/BigInteger;[BII)V
    .locals 6

    .line 109
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(J[BII)V

    return-void
.end method

.method private write(Ljava/util/List;[BIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;[BIII)V"
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr p4, p5

    if-gt v0, p4, :cond_1

    .line 148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move v3, p3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int p3, v3, p5

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    .line 149
    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(Ljava/lang/Object;[BIII)V

    goto :goto_0

    :cond_0
    return-void

    .line 146
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "too many items in list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private write([B[BII)V
    .locals 1

    sub-int/2addr p4, p3

    .line 141
    array-length v0, p1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$serialize$7$ReflectionPayloadSerializer(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;[BLjava/lang/reflect/Method;)V
    .locals 9

    .line 58
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    invoke-virtual {p4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    .line 59
    invoke-interface {v0}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->unitSize()I

    move-result v1

    invoke-interface {v0}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->arraySize()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v1, v2

    .line 60
    sget-object v2, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$LKw5-TBE1DNsmg5fcKx_YJcLdEM;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$LKw5-TBE1DNsmg5fcKx_YJcLdEM;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAccumulate(ILjava/util/function/IntBinaryOperator;)I

    move-result v6

    add-int v7, v1, v6

    const/4 p1, 0x0

    :try_start_0
    new-array p1, p1, [Ljava/lang/Object;

    .line 63
    invoke-virtual {p4, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 65
    invoke-interface {v0}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->unitSize()I

    move-result v8

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(Ljava/lang/Object;[BIII)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 68
    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public synthetic lambda$write$8$ReflectionPayloadSerializer([BIILjava/lang/Integer;)V
    .locals 6

    .line 129
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-long v1, p4

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->write(J[BII)V

    return-void
.end method

.method public serialize(Ljava/lang/Object;)[B
    .locals 4

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 34
    const-class v1, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    sget-object v1, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;->builderpayloadlengthCache:Ljava/util/Map;

    sget-object v2, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$_cZmipx3AZBniSLOgBy2SB4Sp4I;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$_cZmipx3AZBniSLOgBy2SB4Sp4I;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    .line 46
    new-array v1, v1, [B

    .line 48
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$INmY61hpcq-JJ72k2JGgXd_G_bg;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$INmY61hpcq-JJ72k2JGgXd_G_bg;

    .line 51
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$bwbsXGsm0Bk992X5Mxq48-84pYE;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$bwbsXGsm0Bk992X5Mxq48-84pYE;

    .line 52
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$Lz0nBH6WWum_3Mc5r0Sv7A6T-0Q;

    invoke-direct {v3, p0, v2, p1, v1}, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadSerializer$Lz0nBH6WWum_3Mc5r0Sv7A6T-0Q;-><init>(Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadSerializer;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;[B)V

    .line 57
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payload length > 255 for message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not annotated with @MavlinkMessageInfo"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

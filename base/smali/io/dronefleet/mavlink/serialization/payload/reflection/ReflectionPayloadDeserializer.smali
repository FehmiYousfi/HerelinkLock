.class public Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;
.super Ljava/lang/Object;
.source "ReflectionPayloadDeserializer.java"

# interfaces
.implements Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadDeserializer;


# static fields
.field private static final wireComparator:Lio/dronefleet/mavlink/util/WireFieldInfoComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lio/dronefleet/mavlink/util/WireFieldInfoComparator;

    invoke-direct {v0}, Lio/dronefleet/mavlink/util/WireFieldInfoComparator;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->wireComparator:Lio/dronefleet/mavlink/util/WireFieldInfoComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bigIntValue([B)Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x0

    .line 167
    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 168
    aget-byte v1, p1, v0

    .line 169
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    .line 170
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method private deserialize(Ljava/lang/reflect/Type;[BIILio/dronefleet/mavlink/annotations/MavlinkFieldInfo;)Ljava/lang/Object;
    .locals 8

    .line 89
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_a

    .line 90
    check-cast p1, Ljava/lang/Class;

    .line 91
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 93
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 95
    :cond_1
    sget-object p4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-nez p4, :cond_7

    const-class p4, Ljava/lang/Float;

    invoke-virtual {p4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    .line 97
    :cond_2
    sget-object p4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-nez p4, :cond_6

    const-class p4, Ljava/lang/Double;

    invoke-virtual {p4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_0

    .line 99
    :cond_3
    const-class p3, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 100
    invoke-direct {p0, p2}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->stringValue([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 101
    :cond_4
    const-class p3, [B

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_5

    return-object p2

    .line 103
    :cond_5
    const-class p3, Ljava/math/BigInteger;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 104
    invoke-direct {p0, p2}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->bigIntValue([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 98
    :cond_6
    :goto_0
    invoke-direct {p0, p2, p3}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->doubleValue([BI)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 96
    :cond_7
    :goto_1
    invoke-direct {p0, p2, p3}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->floatValue([BI)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 94
    :cond_8
    :goto_2
    invoke-interface {p5}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->signed()Z

    move-result p1

    invoke-direct {p0, p2, p3, p4, p1}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->integerValue([BIIZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 92
    :cond_9
    :goto_3
    invoke-interface {p5}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->signed()Z

    move-result p1

    invoke-direct {p0, p2, p3, p4, p1}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->integerValue([BIIZ)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 106
    :cond_a
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_c

    .line 107
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 108
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 109
    const-class v1, Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 110
    invoke-interface {p5}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->enumType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p5}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->signed()Z

    move-result v7

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->enumValue(Ljava/lang/Class;[BIIZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 111
    :cond_b
    const-class p3, Ljava/util/List;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 112
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 p3, 0x0

    aget-object p1, p1, p3

    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p5}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->listValue(Ljava/lang/Class;[BLio/dronefleet/mavlink/annotations/MavlinkFieldInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method private doubleValue([BI)D
    .locals 1

    .line 144
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 145
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 146
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide p1

    return-wide p1
.end method

.method private enumValue(Ljava/lang/Class;[BIIZ)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[BIIZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 179
    invoke-direct {p0, p2, p3, p4, p5}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->integerValue([BIIZ)J

    move-result-wide p2

    long-to-int p2, p2

    .line 177
    invoke-static {p1, p2}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/lang/Class;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    return-object p1
.end method

.method private floatValue([BI)F
    .locals 1

    .line 150
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 151
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 152
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    return p1
.end method

.method private integerValue([BIIZ)J
    .locals 0

    if-eqz p4, :cond_0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->signedIntegerValue([BII)J

    move-result-wide p1

    return-wide p1

    .line 139
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->unsignedIntegerValue([BII)J

    move-result-wide p1

    return-wide p1
.end method

.method static synthetic lambda$deserialize$0(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 37
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$deserialize$1(Ljava/lang/Class;)Lio/dronefleet/mavlink/serialization/MavlinkSerializationException;
    .locals 3

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/serialization/MavlinkSerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a builder"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/dronefleet/mavlink/serialization/MavlinkSerializationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$deserialize$2(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 45
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$deserialize$3(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .locals 1

    .line 47
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    .line 48
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    .line 49
    sget-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->wireComparator:Lio/dronefleet/mavlink/util/WireFieldInfoComparator;

    invoke-virtual {v0, p0, p1}, Lio/dronefleet/mavlink/util/WireFieldInfoComparator;->compare(Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$null$4(II)I
    .locals 0

    add-int/2addr p0, p1

    return p0
.end method

.method static synthetic lambda$null$5([Ljava/lang/reflect/Type;)Z
    .locals 1

    .line 67
    array-length p0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$null$6([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    const/4 v0, 0x0

    .line 68
    aget-object p0, p0, v0

    return-object p0
.end method

.method static synthetic lambda$null$7(Ljava/lang/reflect/Method;Ljava/lang/Object;)Lio/dronefleet/mavlink/serialization/MavlinkSerializationException;
    .locals 3

    .line 69
    new-instance v0, Lio/dronefleet/mavlink/serialization/MavlinkSerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " of "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is annotated with @MavlinkFieldInfo, however does not accept a single parameter."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/dronefleet/mavlink/serialization/MavlinkSerializationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private listValue(Ljava/lang/Class;[BLio/dronefleet/mavlink/annotations/MavlinkFieldInfo;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[B",
            "Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 183
    invoke-interface {p3}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->unitSize()I

    move-result v0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    div-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    move v6, v2

    .line 185
    array-length v2, p2

    if-ge v6, v2, :cond_0

    add-int v2, v6, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, v2

    move-object v8, p3

    .line 186
    invoke-direct/range {v3 .. v8}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->deserialize(Ljava/lang/reflect/Type;[BIILio/dronefleet/mavlink/annotations/MavlinkFieldInfo;)Ljava/lang/Object;

    move-result-object v3

    .line 187
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private signedIntegerValue([BII)J
    .locals 4

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->unsignedIntegerValue([BII)J

    move-result-wide v0

    sub-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x8

    add-int/lit8 p3, p3, -0x1

    shr-long p1, v0, p3

    const-wide/16 v2, 0x1

    cmp-long p1, p1, v2

    if-nez p1, :cond_0

    const-wide/16 p1, -0x1

    shl-long/2addr p1, p3

    or-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method private stringValue([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 156
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 157
    aget-byte v2, p1, v1

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private unsignedIntegerValue([BII)J
    .locals 6

    const-wide/16 v0, 0x0

    move-wide v1, v0

    move v0, p2

    .line 120
    :goto_0
    array-length v3, p1

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 121
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    sub-int v5, v0, p2

    mul-int/lit8 v5, v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method


# virtual methods
.method public deserialize([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 29
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$v06OCZc8jevv9dzkCM60ngCenEU;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$v06OCZc8jevv9dzkCM60ngCenEU;

    .line 37
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$EcSh9eOLGjbEiLXmX3Bel1q9N-4;

    invoke-direct {v3, p2}, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$EcSh9eOLGjbEiLXmX3Bel1q9N-4;-><init>(Ljava/lang/Class;)V

    .line 39
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    .line 41
    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 43
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$eOOrIt68kz-d35SDwopwFR9Qyeo;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$eOOrIt68kz-d35SDwopwFR9Qyeo;

    .line 45
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$DfNrkWVNC2t-tACtM92A2EcfD6o;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$DfNrkWVNC2t-tACtM92A2EcfD6o;

    .line 46
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$poWh3LT3iW6nfBIMQ1559wlCCk8;

    invoke-direct {v4, p0, v2, p1, p2}, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$poWh3LT3iW6nfBIMQ1559wlCCk8;-><init>(Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;Ljava/util/concurrent/atomic/AtomicInteger;[BLjava/lang/Object;)V

    .line 51
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "build"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 83
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    return-object v0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "class %s is not annotated with @MavlinkMessageInfo"

    .line 31
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic lambda$deserialize$8$ReflectionPayloadDeserializer(Ljava/util/concurrent/atomic/AtomicInteger;[BLjava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 8

    .line 52
    const-class v0, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    invoke-virtual {p4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    .line 54
    invoke-interface {v6}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->unitSize()I

    move-result v0

    invoke-interface {v6}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->arraySize()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v0, v1

    .line 55
    sget-object v1, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$vX39ojwizGxKhTk5-P1SJZjL_Bs;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$vX39ojwizGxKhTk5-P1SJZjL_Bs;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAccumulate(ILjava/util/function/IntBinaryOperator;)I

    move-result p1

    .line 57
    new-array v3, v0, [B

    .line 58
    array-length v1, p2

    const/4 v7, 0x0

    if-ge p1, v1, :cond_0

    .line 59
    array-length v1, p2

    sub-int/2addr v1, p1

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 59
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 63
    invoke-static {p2, p1, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    :cond_0
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$TddVybHWa8zQz-0XGA-OrivX12A;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$TddVybHWa8zQz-0XGA-OrivX12A;

    .line 67
    invoke-virtual {p1, p2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$MVUcjlSQ6WeRcSRoNZPWcTDf98U;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$MVUcjlSQ6WeRcSRoNZPWcTDf98U;

    .line 68
    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$ozQbwWs0rpxiabZiYgriM-9f64w;

    invoke-direct {p2, p4, p3}, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$ReflectionPayloadDeserializer$ozQbwWs0rpxiabZiYgriM-9f64w;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    :try_start_0
    new-array p2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 74
    array-length v5, v3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dronefleet/mavlink/serialization/payload/reflection/ReflectionPayloadDeserializer;->deserialize(Ljava/lang/reflect/Type;[BIILio/dronefleet/mavlink/annotations/MavlinkFieldInfo;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p2, v7

    invoke-virtual {p4, p3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 76
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_1
    return-void
.end method

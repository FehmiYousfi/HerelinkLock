.class public Lorg/mockito/internal/matchers/ArrayEquals;
.super Lorg/mockito/internal/matchers/Equals;
.source "ArrayEquals.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private appendArray([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 54
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 55
    new-instance v2, Lorg/mockito/internal/matchers/Equals;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/mockito/internal/matchers/Equals;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "]"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static createObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 65
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 66
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    .line 68
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 69
    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 70
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public matches(Ljava/lang/Object;)Z
    .locals 2

    .line 18
    invoke-virtual {p0}, Lorg/mockito/internal/matchers/ArrayEquals;->getWanted()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 21
    :cond_0
    instance-of v1, v0, [Z

    if-eqz v1, :cond_1

    instance-of v1, p1, [Z

    if-eqz v1, :cond_1

    .line 22
    check-cast v0, [Z

    check-cast v0, [Z

    check-cast p1, [Z

    check-cast p1, [Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    return p1

    .line 23
    :cond_1
    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    instance-of v1, p1, [B

    if-eqz v1, :cond_2

    .line 24
    check-cast v0, [B

    check-cast v0, [B

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 25
    :cond_2
    instance-of v1, v0, [C

    if-eqz v1, :cond_3

    instance-of v1, p1, [C

    if-eqz v1, :cond_3

    .line 26
    check-cast v0, [C

    check-cast v0, [C

    check-cast p1, [C

    check-cast p1, [C

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    return p1

    .line 27
    :cond_3
    instance-of v1, v0, [D

    if-eqz v1, :cond_4

    instance-of v1, p1, [D

    if-eqz v1, :cond_4

    .line 28
    check-cast v0, [D

    check-cast v0, [D

    check-cast p1, [D

    check-cast p1, [D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    return p1

    .line 29
    :cond_4
    instance-of v1, v0, [F

    if-eqz v1, :cond_5

    instance-of v1, p1, [F

    if-eqz v1, :cond_5

    .line 30
    check-cast v0, [F

    check-cast v0, [F

    check-cast p1, [F

    check-cast p1, [F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    .line 31
    :cond_5
    instance-of v1, v0, [I

    if-eqz v1, :cond_6

    instance-of v1, p1, [I

    if-eqz v1, :cond_6

    .line 32
    check-cast v0, [I

    check-cast v0, [I

    check-cast p1, [I

    check-cast p1, [I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    .line 33
    :cond_6
    instance-of v1, v0, [J

    if-eqz v1, :cond_7

    instance-of v1, p1, [J

    if-eqz v1, :cond_7

    .line 34
    check-cast v0, [J

    check-cast v0, [J

    check-cast p1, [J

    check-cast p1, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    .line 35
    :cond_7
    instance-of v1, v0, [S

    if-eqz v1, :cond_8

    instance-of v1, p1, [S

    if-eqz v1, :cond_8

    .line 36
    check-cast v0, [S

    check-cast v0, [S

    check-cast p1, [S

    check-cast p1, [S

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p1

    return p1

    .line 37
    :cond_8
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_9

    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 38
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1

    .line 20
    :cond_a
    :goto_0
    invoke-super {p0, p1}, Lorg/mockito/internal/matchers/Equals;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/mockito/internal/matchers/ArrayEquals;->getWanted()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mockito/internal/matchers/ArrayEquals;->getWanted()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lorg/mockito/internal/matchers/ArrayEquals;->getWanted()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/matchers/ArrayEquals;->createObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/internal/matchers/ArrayEquals;->appendArray([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    invoke-super {p0}, Lorg/mockito/internal/matchers/Equals;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

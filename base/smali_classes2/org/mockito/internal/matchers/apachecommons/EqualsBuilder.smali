.class Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"


# instance fields
.field private isEquals:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;Z[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 288
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    if-eqz p5, :cond_0

    .line 289
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p5

    :goto_0
    const/4 v0, 0x1

    .line 290
    invoke-static {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 291
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_3

    iget-boolean v1, p3, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_3

    .line 292
    aget-object v1, p2, v0

    .line 293
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    if-nez p4, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 298
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 302
    :catch_0
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Unexpected IllegalAccessException"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-static {p0, p1, v1, v0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-static {p0, p1, p2, v0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 192
    invoke-static {p0, p1, p2, p3, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_3

    .line 233
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 236
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 244
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v2

    .line 252
    :cond_4
    :goto_1
    new-instance v10, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    invoke-direct {v10}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;-><init>()V

    move-object v4, p0

    move-object v5, p1

    move-object v6, v1

    move-object v7, v10

    move v8, p2

    move-object v9, p4

    .line 254
    :try_start_0
    invoke-static/range {v4 .. v9}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;Z[Ljava/lang/String;)V

    .line 255
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eq v1, p3, :cond_5

    .line 256
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v10

    move v6, p2

    move-object v7, p4

    .line 257
    invoke-static/range {v2 .. v7}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 267
    :cond_5
    invoke-virtual {v10}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals()Z

    move-result p0

    return p0

    :catch_0
    :cond_6
    :goto_3
    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-static {p0, p1, v0, v1, p2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public append(BB)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 1

    .line 440
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(CC)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 1

    .line 428
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(DD)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 1

    .line 458
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    .line 461
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(JJ)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(FF)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 1

    .line 478
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    .line 481
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(II)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(II)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 1

    .line 404
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(JJ)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 1

    .line 392
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3

    .line 333
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    if-nez p2, :cond_2

    goto/16 :goto_1

    .line 343
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 344
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_5

    .line 345
    instance-of v1, p1, Ljava/math/BigDecimal;

    if-eqz v1, :cond_4

    instance-of v1, p2, Ljava/math/BigDecimal;

    if-eqz v1, :cond_4

    .line 346
    check-cast p1, Ljava/math/BigDecimal;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    goto/16 :goto_0

    .line 349
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    goto/16 :goto_0

    .line 351
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_6

    .line 353
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    goto/16 :goto_0

    .line 357
    :cond_6
    instance-of v0, p1, [J

    if-eqz v0, :cond_7

    .line 358
    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([J[J)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto/16 :goto_0

    .line 359
    :cond_7
    instance-of v0, p1, [I

    if-eqz v0, :cond_8

    .line 360
    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([I[I)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto/16 :goto_0

    .line 361
    :cond_8
    instance-of v0, p1, [S

    if-eqz v0, :cond_9

    .line 362
    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([S[S)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto :goto_0

    .line 363
    :cond_9
    instance-of v0, p1, [C

    if-eqz v0, :cond_a

    .line 364
    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([C[C)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto :goto_0

    .line 365
    :cond_a
    instance-of v0, p1, [B

    if-eqz v0, :cond_b

    .line 366
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([B[B)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto :goto_0

    .line 367
    :cond_b
    instance-of v0, p1, [D

    if-eqz v0, :cond_c

    .line 368
    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([D[D)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto :goto_0

    .line 369
    :cond_c
    instance-of v0, p1, [F

    if-eqz v0, :cond_d

    .line 370
    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([F[F)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto :goto_0

    .line 371
    :cond_d
    instance-of v0, p1, [Z

    if-eqz v0, :cond_e

    .line 372
    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([Z[Z)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto :goto_0

    .line 375
    :cond_e
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    :goto_0
    return-object p0

    .line 340
    :cond_f
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append(SS)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 1

    .line 416
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(ZZ)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 1

    .line 492
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append([B[B)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3

    .line 662
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 672
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 673
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 676
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 677
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(BB)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 669
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([C[C)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3

    .line 631
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 641
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 642
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 645
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 646
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(CC)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 638
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([D[D)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 5

    .line 693
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 703
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 704
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 707
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 708
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(DD)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 700
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([F[F)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3

    .line 724
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 734
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 735
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 738
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 739
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(FF)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 731
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([I[I)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3

    .line 569
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 579
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 580
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 583
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 584
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(II)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 576
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([J[J)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 5

    .line 538
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 548
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 549
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 552
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 553
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(JJ)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 545
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3

    .line 507
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 517
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 518
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 521
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 522
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 514
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([S[S)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3

    .line 600
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 610
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 611
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 614
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 615
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(SS)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 607
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([Z[Z)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3

    .line 755
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 765
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 766
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 769
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 770
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(ZZ)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 762
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public appendSuper(Z)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 1

    .line 318
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public isEquals()Z
    .locals 1

    .line 782
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method protected setEquals(Z)V
    .locals 0

    .line 792
    iput-boolean p1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    return-void
.end method

.class public Lorg/eclipse/californium/elements/util/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# static fields
.field public static final EMPTY:[B


# instance fields
.field private asString:Ljava/lang/String;

.field private final bytes:[B

.field private final hash:I

.field private final useClassInEquals:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 29
    sput-object v0, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/californium/elements/util/Bytes;-><init>([BIZ)V

    return-void
.end method

.method public constructor <init>([BIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/californium/elements/util/Bytes;-><init>([BIZZ)V

    return-void
.end method

.method public constructor <init>([BIZZ)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 93
    array-length v0, p1

    if-gt v0, p2, :cond_1

    .line 96
    iput-boolean p4, p0, Lorg/eclipse/californium/elements/util/Bytes;->useClassInEquals:Z

    if-eqz p3, :cond_0

    .line 97
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lorg/eclipse/californium/elements/util/Bytes;->bytes:[B

    .line 98
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/elements/util/Bytes;->hash:I

    return-void

    .line 94
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bytes length must be between 0 and "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " inclusive"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static clear([B)V
    .locals 1

    const/4 v0, 0x0

    .line 249
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public static concatenate(Lorg/eclipse/californium/elements/util/Bytes;Lorg/eclipse/californium/elements/util/Bytes;)[B
    .locals 0

    .line 218
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/Bytes;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/Bytes;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/californium/elements/util/Bytes;->concatenate([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static concatenate([B[B)[B
    .locals 4

    .line 230
    array-length v0, p0

    .line 231
    array-length v1, p1

    add-int v2, v0, v1

    .line 233
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 235
    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static createBytes(Ljava/util/Random;I)[B
    .locals 6

    .line 188
    new-array v0, p1, [B

    .line 190
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextBytes([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Number of bits per request limited "

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1000

    if-le p1, v1, :cond_0

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    .line 198
    invoke-virtual {p0, v1}, Ljava/util/Random;->nextBytes([B)V

    sub-int v4, p1, v3

    .line 199
    array-length v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 200
    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    :goto_1
    return-object v0
.end method

.method public static equals(Lorg/eclipse/californium/elements/util/Bytes;Lorg/eclipse/californium/elements/util/Bytes;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/Bytes;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 127
    :cond_1
    instance-of v1, p1, Lorg/eclipse/californium/elements/util/Bytes;

    if-eqz v1, :cond_5

    .line 128
    move-object v1, p1

    check-cast v1, Lorg/eclipse/californium/elements/util/Bytes;

    .line 129
    iget-boolean v2, p0, Lorg/eclipse/californium/elements/util/Bytes;->useClassInEquals:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lorg/eclipse/californium/elements/util/Bytes;->useClassInEquals:Z

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eq v2, p1, :cond_3

    return v0

    .line 132
    :cond_3
    iget p1, p0, Lorg/eclipse/californium/elements/util/Bytes;->hash:I

    iget v2, v1, Lorg/eclipse/californium/elements/util/Bytes;->hash:I

    if-eq p1, v2, :cond_4

    return v0

    .line 135
    :cond_4
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/Bytes;->bytes:[B

    iget-object v0, v1, Lorg/eclipse/californium/elements/util/Bytes;->bytes:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method public final getAsString()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Bytes;->asString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Bytes;->bytes:[B

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/Bytes;->asString:Ljava/lang/String;

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Bytes;->asString:Ljava/lang/String;

    return-object v0
.end method

.method public final getBytes()[B
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Bytes;->bytes:[B

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/eclipse/californium/elements/util/Bytes;->hash:I

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Bytes;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final length()I
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Bytes;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BYTES="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/Bytes;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

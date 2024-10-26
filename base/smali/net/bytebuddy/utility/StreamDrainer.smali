.class public Lnet/bytebuddy/utility/StreamDrainer;
.super Ljava/lang/Object;
.source "StreamDrainer.java"


# static fields
.field public static final DEFAULT:Lnet/bytebuddy/utility/StreamDrainer;

.field public static final DEFAULT_BUFFER_SIZE:I = 0x400

.field private static final END_OF_STREAM:I = -0x1

.field private static final FROM_BEGINNING:I


# instance fields
.field private final bufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lnet/bytebuddy/utility/StreamDrainer;

    invoke-direct {v0}, Lnet/bytebuddy/utility/StreamDrainer;-><init>()V

    sput-object v0, Lnet/bytebuddy/utility/StreamDrainer;->DEFAULT:Lnet/bytebuddy/utility/StreamDrainer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    .line 45
    invoke-direct {p0, v0}, Lnet/bytebuddy/utility/StreamDrainer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p1, p1, Lnet/bytebuddy/utility/StreamDrainer;

    return p1
.end method

.method public drain(Ljava/io/InputStream;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget v1, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    .line 70
    :cond_0
    iget v4, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    sub-int/2addr v4, v3

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    add-int/2addr v3, v5

    .line 72
    iget v5, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    if-ne v3, v5, :cond_2

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget v1, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    new-array v1, v1, [B

    move v3, v2

    :cond_2
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget v4, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    mul-int/2addr p1, v4

    add-int/2addr p1, v3

    new-array p1, p1, [B

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    add-int/lit8 v6, v4, 0x1

    .line 81
    iget v7, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    mul-int/2addr v4, v7

    invoke-static {v5, v2, p1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v6

    goto :goto_1

    .line 83
    :cond_3
    iget v0, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    mul-int/2addr v4, v0

    invoke-static {v1, v2, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/utility/StreamDrainer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/utility/StreamDrainer;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/utility/StreamDrainer;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    iget p1, p1, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 13
    iget v0, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

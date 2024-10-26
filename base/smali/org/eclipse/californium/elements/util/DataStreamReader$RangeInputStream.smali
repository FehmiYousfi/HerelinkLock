.class public Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "DataStreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/DataStreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RangeInputStream"
.end annotation


# direct methods
.method protected constructor <init>([B)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method

.method protected constructor <init>([BII)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;I)Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;->range(I)Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;

    move-result-object p0

    return-object p0
.end method

.method private range(I)Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;
    .locals 5

    .line 71
    iget v0, p0, Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;->pos:I

    int-to-long v1, p1

    .line 72
    invoke-virtual {p0, v1, v2}, Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;->skip(J)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-ltz v1, :cond_0

    .line 77
    new-instance v1, Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;

    iget-object v2, p0, Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;->buf:[B

    invoke-direct {v1, v2, v0, p1}, Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;-><init>([BII)V

    return-object v1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requested "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes exceeds available "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

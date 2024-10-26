.class final Lcom/tananaev/adblib/AdbProtocol$AdbMessage;
.super Ljava/lang/Object;
.source "AdbProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tananaev/adblib/AdbProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AdbMessage"
.end annotation


# instance fields
.field public arg0:I

.field public arg1:I

.field public checksum:I

.field public command:I

.field public magic:I

.field public payload:[B

.field public payloadLength:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAdbMessage(Ljava/io/InputStream;)Lcom/tananaev/adblib/AdbProtocol$AdbMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    new-instance v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;

    invoke-direct {v0}, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;-><init>()V

    const/16 v1, 0x18

    .line 299
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 304
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    rsub-int/lit8 v6, v4, 0x18

    invoke-virtual {p0, v5, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const-string v6, "Stream closed"

    if-ltz v5, :cond_4

    add-int/2addr v4, v5

    if-lt v4, v1, :cond_0

    .line 314
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->command:I

    .line 315
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->arg0:I

    .line 316
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->arg1:I

    .line 317
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->payloadLength:I

    .line 318
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->checksum:I

    .line 319
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->magic:I

    .line 322
    iget v1, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->payloadLength:I

    if-eqz v1, :cond_3

    .line 323
    new-array v1, v1, [B

    iput-object v1, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->payload:[B

    .line 327
    :cond_1
    iget-object v1, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->payload:[B

    iget v2, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->payloadLength:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/2addr v3, v1

    .line 334
    iget v1, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->payloadLength:I

    if-lt v3, v1, :cond_1

    goto :goto_0

    .line 330
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-object v0

    .line 307
    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

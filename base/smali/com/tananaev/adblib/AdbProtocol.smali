.class public Lcom/tananaev/adblib/AdbProtocol;
.super Ljava/lang/Object;
.source "AdbProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tananaev/adblib/AdbProtocol$AdbMessage;
    }
.end annotation


# static fields
.field public static final ADB_HEADER_LENGTH:I = 0x18

.field public static final AUTH_TYPE_RSA_PUBLIC:I = 0x3

.field public static final AUTH_TYPE_SIGNATURE:I = 0x2

.field public static final AUTH_TYPE_TOKEN:I = 0x1

.field public static final CMD_AUTH:I = 0x48545541

.field public static final CMD_CLSE:I = 0x45534c43

.field public static final CMD_CNXN:I = 0x4e584e43

.field public static final CMD_OKAY:I = 0x59414b4f

.field public static final CMD_OPEN:I = 0x4e45504f

.field public static final CMD_SYNC:I = 0x434e5953

.field public static final CMD_WRTE:I = 0x45545257

.field public static final CONNECT_MAXDATA:I = 0x1000

.field public static CONNECT_PAYLOAD:[B = null

.field public static final CONNECT_VERSION:I = 0x1000000


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "host::\u0000"

    const-string v1, "UTF-8"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/tananaev/adblib/AdbProtocol;->CONNECT_PAYLOAD:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateAuth(I[B)[B
    .locals 2

    const v0, 0x48545541

    const/4 v1, 0x0

    .line 202
    invoke-static {v0, p0, v1, p1}, Lcom/tananaev/adblib/AdbProtocol;->generateMessage(III[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateClose(II)[B
    .locals 2

    const v0, 0x45534c43

    const/4 v1, 0x0

    .line 240
    invoke-static {v0, p0, p1, v1}, Lcom/tananaev/adblib/AdbProtocol;->generateMessage(III[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateConnect()[B
    .locals 4

    .line 191
    sget-object v0, Lcom/tananaev/adblib/AdbProtocol;->CONNECT_PAYLOAD:[B

    const v1, 0x4e584e43    # 9.072519E8f

    const/high16 v2, 0x1000000

    const/16 v3, 0x1000

    invoke-static {v1, v2, v3, v0}, Lcom/tananaev/adblib/AdbProtocol;->generateMessage(III[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateMessage(III[B)[B
    .locals 2

    const/16 v0, 0x18

    if-eqz p3, :cond_0

    .line 159
    array-length v1, p3

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 164
    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_1

    .line 169
    array-length p1, p3

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 170
    invoke-static {p3}, Lcom/tananaev/adblib/AdbProtocol;->getPayloadChecksum([B)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 172
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 173
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_1
    not-int p0, p0

    .line 176
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_2

    .line 179
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 182
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static generateOpen(ILjava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 215
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 216
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 217
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const v1, 0x4e45504f    # 8.2759366E8f

    invoke-static {v1, p0, p1, v0}, Lcom/tananaev/adblib/AdbProtocol;->generateMessage(III[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateReady(II)[B
    .locals 2

    const v0, 0x59414b4f

    const/4 v1, 0x0

    .line 251
    invoke-static {v0, p0, p1, v1}, Lcom/tananaev/adblib/AdbProtocol;->generateMessage(III[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateWrite(II[B)[B
    .locals 1

    const v0, 0x45545257

    .line 229
    invoke-static {v0, p0, p1, p2}, Lcom/tananaev/adblib/AdbProtocol;->generateMessage(III[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static getPayloadChecksum([B)I
    .locals 4

    .line 105
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v3, p0, v1

    if-ltz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit16 v3, v3, 0x100

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static validateMessage(Lcom/tananaev/adblib/AdbProtocol$AdbMessage;)Z
    .locals 3

    .line 125
    iget v0, p0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->command:I

    iget v1, p0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->magic:I

    not-int v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 128
    :cond_0
    iget v0, p0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->payloadLength:I

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->payload:[B

    invoke-static {v0}, Lcom/tananaev/adblib/AdbProtocol;->getPayloadChecksum([B)I

    move-result v0

    iget p0, p0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->checksum:I

    if-eq v0, p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

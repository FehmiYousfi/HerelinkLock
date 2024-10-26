.class public final Lorg/eclipse/californium/elements/util/DatagramWriter;
.super Ljava/lang/Object;
.source "DatagramWriter.java"


# static fields
.field public static final COPIES:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final DEFAULT_ARRAY_SIZE:I = 0x20

.field private static final MAX_ARRAY_SIZE:I = 0x3fffffff

.field public static final TAKES:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private buffer:[B

.field private count:I

.field private currentBitIndex:I

.field private currentByte:B

.field private final secureClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/util/DatagramWriter;->COPIES:Ljava/util/concurrent/atomic/AtomicLong;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/util/DatagramWriter;->TAKES:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean p2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->secureClose:Z

    .line 84
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    .line 86
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->resetCurrentByte()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/16 v0, 0x20

    .line 62
    invoke-direct {p0, v0, p1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(IZ)V

    return-void
.end method

.method private final calculateBufferSize(I)I
    .locals 2

    .line 587
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/16 v0, 0x20

    :cond_0
    const v1, 0x3fffffff    # 1.9999999f

    if-ge v0, p1, :cond_1

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    return p1
.end method

.method private final ensureBufferSize(I)V
    .locals 1

    .line 555
    iget v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    add-int/2addr v0, p1

    .line 556
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    array-length p1, p1

    if-le v0, p1, :cond_0

    .line 557
    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->calculateBufferSize(I)I

    move-result p1

    .line 558
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->setBufferSize(I)V

    :cond_0
    return-void
.end method

.method public static getNullLengthValue(I)I
    .locals 3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 618
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Var length Bits must be a multiple of 8, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const p0, 0xffffff

    return p0

    :cond_2
    const p0, 0xffff

    return p0

    :cond_3
    const/16 p0, 0xff

    return p0
.end method

.method public static getVarLengthBits(I)I
    .locals 1

    .line 600
    rem-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    and-int/lit8 p0, p0, -0x8

    add-int/lit8 p0, p0, 0x8

    :cond_0
    return p0
.end method

.method private final resetCurrentByte()V
    .locals 1

    const/4 v0, 0x0

    .line 512
    iput-byte v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentByte:B

    const/4 v0, 0x7

    .line 513
    iput v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    return-void
.end method

.method private final setBufferSize(I)V
    .locals 3

    .line 571
    new-array p1, p1, [B

    .line 572
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    iget v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->secureClose:Z

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    iget v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 576
    :cond_0
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    return-void
.end method

.method private final write(B)V
    .locals 3

    .line 543
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    iget v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    aput-byte p1, v0, v1

    return-void
.end method

.method private final write([BII)V
    .locals 2

    if-eqz p1, :cond_0

    if-lez p3, :cond_0

    .line 528
    invoke-direct {p0, p3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->ensureBufferSize(I)V

    .line 529
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    iget v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    iget p1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 485
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->reset()V

    .line 486
    sget-object v0, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    return-void
.end method

.method public final isBytePending()Z
    .locals 2

    .line 505
    iget v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 3

    .line 473
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->secureClose:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    iget v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    invoke-static {v0, v1, v2, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 476
    :cond_0
    iput v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 463
    iget v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    return v0
.end method

.method public space(I)I
    .locals 3

    .line 353
    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->isBytePending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    .line 361
    div-int/lit8 p1, p1, 0x8

    .line 362
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->ensureBufferSize(I)V

    .line 363
    iget v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    return v0

    .line 358
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bits are pending!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of bits must be multiple of 8, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 375
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeCurrentByte()V

    .line 378
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 380
    sget-object v1, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    iput-object v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    .line 381
    sget-object v1, Lorg/eclipse/californium/elements/util/DatagramWriter;->TAKES:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_0

    .line 384
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 385
    iget-boolean v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->secureClose:Z

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    iget v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    invoke-static {v1, v3, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 388
    :cond_1
    sget-object v1, Lorg/eclipse/californium/elements/util/DatagramWriter;->COPIES:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 392
    :goto_0
    iput v3, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 625
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    iget v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 626
    array-length v1, v0

    if-eqz v1, :cond_2

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 629
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 630
    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    array-length v5, v0

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_0

    const/16 v4, 0x20

    .line 633
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 636
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "--"

    return-object v0
.end method

.method public write(II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_7

    const/16 v2, 0x20

    if-gt p2, v2, :cond_7

    if-ge p2, v2, :cond_1

    shr-int v2, p1, p2

    if-nez v2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Truncating value %d to %d-bit integer"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    add-int/lit8 v2, p2, 0x7

    .line 185
    div-int/lit8 v2, v2, 0x8

    and-int/lit8 v3, p2, 0x7

    if-nez v3, :cond_2

    .line 187
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->isBytePending()Z

    move-result v3

    if-nez v3, :cond_2

    .line 189
    invoke-direct {p0, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->ensureBufferSize(I)V

    add-int/lit8 p2, p2, -0x8

    :goto_1
    if-ltz p2, :cond_6

    shr-int v0, p1, p2

    int-to-byte v0, v0

    .line 191
    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(B)V

    add-int/lit8 p2, p2, -0x8

    goto :goto_1

    :cond_2
    add-int/2addr v2, v1

    .line 194
    invoke-direct {p0, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->ensureBufferSize(I)V

    sub-int/2addr p2, v1

    :goto_2
    if-ltz p2, :cond_6

    shr-int v2, p1, p2

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    if-eqz v2, :cond_4

    .line 201
    iget-byte v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentByte:B

    iget v3, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    shl-int v3, v1, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentByte:B

    .line 205
    :cond_4
    iget v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    .line 208
    iget v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    if-gez v2, :cond_5

    .line 209
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeCurrentByte()V

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_6
    return-void

    .line 179
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Number of bits must be 1 to 32, not %d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 2

    .line 404
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeCurrentByte()V

    .line 405
    iget-object v0, p1, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    iget p1, p1, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write([BII)V

    return-void
.end method

.method public writeAt(III)V
    .locals 3

    add-int/lit8 v0, p3, 0x7

    .line 227
    div-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p1

    .line 228
    iget v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 229
    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->ensureBufferSize(I)V

    .line 231
    :cond_0
    iget v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    .line 232
    iget v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    .line 233
    iget-byte v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentByte:B

    .line 234
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->resetCurrentByte()V

    .line 235
    iput p1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    .line 236
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 237
    iget p1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    if-ge p1, v0, :cond_1

    .line 238
    iput v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    .line 239
    iput-byte v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentByte:B

    .line 240
    iput v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    :cond_1
    return-void
.end method

.method public writeByte(B)V
    .locals 1

    .line 293
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->isBytePending()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x8

    .line 294
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 296
    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->ensureBufferSize(I)V

    .line 297
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(B)V

    :goto_0
    return-void
.end method

.method public writeBytes([B)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 255
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([BII)V

    return-void
.end method

.method public writeBytes([BII)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 273
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->isBytePending()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v1, v0, p2

    .line 276
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write([BII)V

    :cond_2
    :goto_1
    return-void
.end method

.method public writeCurrentByte()V
    .locals 1

    .line 493
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->isBytePending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 494
    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->ensureBufferSize(I)V

    .line 495
    iget-byte v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentByte:B

    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(B)V

    .line 496
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->resetCurrentByte()V

    :cond_0
    return-void
.end method

.method public writeLong(JI)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p3, :cond_7

    const/16 v2, 0x40

    if-gt p3, v2, :cond_7

    const-wide/16 v3, 0x0

    if-ge p3, v2, :cond_1

    shr-long v5, p1, p3

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Truncating value %d to %d-bit integer"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    add-int/lit8 v2, p3, 0x7

    .line 109
    div-int/lit8 v2, v2, 0x8

    and-int/lit8 v5, p3, 0x7

    if-nez v5, :cond_2

    .line 111
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->isBytePending()Z

    move-result v5

    if-nez v5, :cond_2

    .line 113
    invoke-direct {p0, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->ensureBufferSize(I)V

    add-int/lit8 p3, p3, -0x8

    :goto_1
    if-ltz p3, :cond_6

    shr-long v0, p1, p3

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 115
    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(B)V

    add-int/lit8 p3, p3, -0x8

    goto :goto_1

    :cond_2
    add-int/2addr v2, v1

    .line 118
    invoke-direct {p0, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->ensureBufferSize(I)V

    sub-int/2addr p3, v1

    :goto_2
    if-ltz p3, :cond_6

    shr-long v5, p1, p3

    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    if-eqz v2, :cond_4

    .line 125
    iget-byte v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentByte:B

    iget v5, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    shl-int v5, v1, v5

    or-int/2addr v2, v5

    int-to-byte v2, v2

    iput-byte v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentByte:B

    .line 129
    :cond_4
    iget v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    .line 132
    iget v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    if-gez v2, :cond_5

    .line 133
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeCurrentByte()V

    :cond_5
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_6
    return-void

    .line 103
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Number of bits must be 1 to 64, not %d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLongAt(IJI)V
    .locals 3

    add-int/lit8 v0, p4, 0x7

    .line 151
    div-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p1

    .line 152
    iget v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 153
    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->ensureBufferSize(I)V

    .line 155
    :cond_0
    iget v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    .line 156
    iget v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    .line 157
    iget-byte v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentByte:B

    .line 158
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->resetCurrentByte()V

    .line 159
    iput p1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    .line 160
    invoke-virtual {p0, p2, p3, p4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    .line 161
    iget p1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    if-ge p1, v0, :cond_1

    .line 162
    iput v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    .line 163
    iput-byte v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentByte:B

    .line 164
    iput v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->currentBitIndex:I

    :cond_1
    return-void
.end method

.method public writeSize(II)V
    .locals 2

    .line 449
    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_0

    .line 453
    iget v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    sub-int/2addr v0, p1

    div-int/lit8 v1, p2, 0x8

    sub-int/2addr v0, v1

    .line 454
    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeAt(III)V

    return-void

    .line 450
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of bits must be multiple of 8, not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "!"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeCurrentByte()V

    .line 417
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->buffer:[B

    iget v1, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 418
    iput v2, p0, Lorg/eclipse/californium/elements/util/DatagramWriter;->count:I

    return-void
.end method

.method public writeVarBytes(Lorg/eclipse/californium/elements/util/Bytes;I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/Bytes;->getBytes()[B

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    return-void
.end method

.method public writeVarBytes([BI)V
    .locals 3

    .line 312
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->getVarLengthBits(I)I

    move-result v0

    .line 313
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->getNullLengthValue(I)I

    move-result v1

    if-nez p1, :cond_0

    .line 315
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_1

    .line 317
    :cond_0
    array-length v2, p1

    if-eq v1, v2, :cond_3

    if-ge p2, v0, :cond_2

    .line 320
    array-length v1, p1

    shr-int/2addr v1, p2

    if-nez v1, :cond_1

    goto :goto_0

    .line 321
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Truncating value %d to %d-bit integer"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_2
    :goto_0
    array-length p2, p1

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 324
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    :goto_1
    return-void

    .line 318
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes is too large for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

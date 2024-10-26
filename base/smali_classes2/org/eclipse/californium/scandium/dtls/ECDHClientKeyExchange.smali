.class public Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;
.super Lorg/eclipse/californium/scandium/dtls/ClientKeyExchange;
.source "ECDHClientKeyExchange.java"


# static fields
.field private static final LENGTH_BITS:I = 0x8


# instance fields
.field private final encodedPoint:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/ClientKeyExchange;-><init>()V

    if-eqz p1, :cond_0

    .line 61
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;->encodedPoint:[B

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "encoded point cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 1

    .line 93
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;->readEncodedPoint(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object p0

    .line 94
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;-><init>([B)V

    return-object v0
.end method

.method protected static readEncodedPoint(Lorg/eclipse/californium/elements/util/DatagramReader;)[B
    .locals 1

    const/16 v0, 0x8

    .line 89
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fragmentToByteArray()[B
    .locals 1

    .line 66
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>()V

    .line 67
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;->writeFragment(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 68
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPoint()[B
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;->encodedPoint:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;->encodedPoint:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientKeyExchange;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    .line 115
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Diffie-Hellman public value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;->encodedPoint:[B

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, v1, v2}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([BCI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected writeFragment(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;->encodedPoint:[B

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    return-void
.end method

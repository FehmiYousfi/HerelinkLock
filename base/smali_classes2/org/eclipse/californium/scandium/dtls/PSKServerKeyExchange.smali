.class public final Lorg/eclipse/californium/scandium/dtls/PSKServerKeyExchange;
.super Lorg/eclipse/californium/scandium/dtls/ServerKeyExchange;
.source "PSKServerKeyExchange.java"


# static fields
.field private static final IDENTITY_HINT_LENGTH_BITS:I = 0x10


# instance fields
.field private final hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/ServerKeyExchange;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/PSKServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/ServerKeyExchange;-><init>()V

    .line 44
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->fromByteArray([B)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/PSKServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-void
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 1

    const/16 v0, 0x10

    .line 74
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object p0

    .line 76
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/PSKServerKeyExchange;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/PSKServerKeyExchange;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public fragmentToByteArray()[B
    .locals 3

    .line 65
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/PSKServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 67
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/PSKServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes(Lorg/eclipse/californium/elements/util/Bytes;I)V

    .line 69
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getHint()Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/PSKServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/PSKServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerKeyExchange;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    .line 57
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "PSK Identity Hint: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/PSKServerKeyExchange;->hint:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

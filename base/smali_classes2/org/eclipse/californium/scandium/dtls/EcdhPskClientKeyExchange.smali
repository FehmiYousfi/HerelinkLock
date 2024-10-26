.class public final Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;
.super Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;
.source "EcdhPskClientKeyExchange.java"


# static fields
.field private static final IDENTITY_LENGTH_BITS:I = 0x10


# instance fields
.field private final identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V
    .locals 0

    .line 54
    invoke-direct {p0, p2}, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;-><init>([B)V

    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;->identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "identity cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 2

    const/16 v0, 0x10

    .line 79
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object v0

    .line 80
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->fromByteArray([B)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object v0

    .line 81
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;->readEncodedPoint(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object p0

    .line 82
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;

    invoke-direct {v1, v0, p0}, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;-><init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V

    return-object v1
.end method


# virtual methods
.method public getIdentity()Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;->identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-object v0
.end method

.method public getMessageLength()I
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;->identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-super {p0}, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;->getMessageLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    .line 94
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Encoded identity value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;->identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected writeFragment(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;->identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes(Lorg/eclipse/californium/elements/util/Bytes;I)V

    .line 69
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;->writeFragment(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    return-void
.end method

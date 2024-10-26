.class synthetic Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;
.super Ljava/lang/Object;
.source "ClientHandshaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

.field static final synthetic $SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$KeyExchangeAlgorithm:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 295
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->values()[Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->HELLO_VERIFY_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_HELLO:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_HELLO_DONE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->FINISHED:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 311
    :catch_6
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$KeyExchangeAlgorithm:[I

    :try_start_7
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$KeyExchangeAlgorithm:[I

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$KeyExchangeAlgorithm:[I

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$KeyExchangeAlgorithm:[I

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

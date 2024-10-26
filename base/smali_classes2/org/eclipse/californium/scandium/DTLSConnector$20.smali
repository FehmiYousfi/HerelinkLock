.class synthetic Lorg/eclipse/californium/scandium/DTLSConnector$20;
.super Ljava/lang/Object;
.source "DTLSConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

.field static final synthetic $SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1988
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->values()[Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/californium/scandium/DTLSConnector$20;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector$20;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CLIENT_HELLO:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector$20;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->HELLO_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1746
    :catch_1
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/ContentType;->values()[Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/eclipse/californium/scandium/DTLSConnector$20;->$SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

    :try_start_2
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector$20;->$SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ContentType;->APPLICATION_DATA:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/ContentType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector$20;->$SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/ContentType;->ALERT:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/ContentType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector$20;->$SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector$20;->$SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

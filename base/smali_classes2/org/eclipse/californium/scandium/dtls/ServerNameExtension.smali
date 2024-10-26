.class public final Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;
.super Lorg/eclipse/californium/scandium/dtls/HelloExtension;
.source "ServerNameExtension.java"


# static fields
.field private static EMPTY_SERVER_NAMES:Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;


# instance fields
.field private final serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;-><init>(Lorg/eclipse/californium/scandium/util/ServerNames;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->EMPTY_SERVER_NAMES:Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/californium/scandium/util/ServerNames;)V
    .locals 1

    .line 50
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SERVER_NAME:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)V

    .line 51
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    return-void
.end method

.method public static emptyServerNameIndication()Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;
    .locals 1

    .line 64
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->EMPTY_SERVER_NAMES:Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    return-object v0
.end method

.method public static forServerNames(Lorg/eclipse/californium/scandium/util/ServerNames;)Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;
    .locals 1

    if-eqz p0, :cond_1

    .line 84
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/util/ServerNames;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;-><init>(Lorg/eclipse/californium/scandium/util/ServerNames;)V

    return-object v0

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "server names must not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "server names must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->emptyServerNameIndication()Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    move-result-object p0

    return-object p0

    .line 139
    :cond_0
    invoke-static {}, Lorg/eclipse/californium/scandium/util/ServerNames;->newInstance()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object v0

    .line 141
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/eclipse/californium/scandium/util/ServerNames;->decode(Lorg/eclipse/californium/elements/util/DatagramReader;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;-><init>(Lorg/eclipse/californium/scandium/util/ServerNames;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz p0, :cond_1

    .line 144
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "Server Name Indication extension contains unknown name_type"

    invoke-direct {p0, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p0

    .line 147
    :cond_1
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "malformed Server Name Indication extension"

    invoke-direct {p0, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p0
.end method


# virtual methods
.method protected getExtensionLength()I
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/util/ServerNames;->getLength()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 101
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/util/ServerNames;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected writeExtensionTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/util/ServerNames;->encode(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    :cond_0
    return-void
.end method

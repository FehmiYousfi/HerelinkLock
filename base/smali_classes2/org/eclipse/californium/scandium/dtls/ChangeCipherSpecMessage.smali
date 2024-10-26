.class public final Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;
.super Ljava/lang/Object;
.source "ChangeCipherSpecMessage.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/DTLSMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;
    }
.end annotation


# static fields
.field private static final CCS_BITS:I = 0x8


# instance fields
.field private final CCSProtocolType:Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;->CCSProtocolType:Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    return-void
.end method

.method public static fromByteArray([B)Lorg/eclipse/californium/scandium/dtls/DTLSMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramReader;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([B)V

    const/16 p0, 0x8

    .line 98
    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result p0

    .line 99
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 100
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;

    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;-><init>()V

    return-object p0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Change Cipher Spec code received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 103
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 104
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v1
.end method


# virtual methods
.method public getCCSProtocolType()Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;->CCSProtocolType:Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    return-object v0
.end method

.method public getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;
    .locals 1

    .line 66
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .line 90
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 91
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;->CCSProtocolType:Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage$CCSType;->getCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 93
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Change Cipher Spec Message"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

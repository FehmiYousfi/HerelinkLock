.class public final Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.source "FragmentedHandshakeMessage.java"


# instance fields
.field private final fragmentOffset:I

.field private final fragmentedBytes:[B

.field private final messageLength:I

.field private final type:Lorg/eclipse/californium/scandium/dtls/HandshakeType;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;III[B)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->type:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    .line 63
    iput p2, p0, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->messageLength:I

    .line 64
    array-length p1, p5

    invoke-static {p5, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->fragmentedBytes:[B

    .line 65
    iput p4, p0, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->fragmentOffset:I

    .line 66
    invoke-virtual {p0, p3}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->setMessageSeq(I)V

    return-void
.end method


# virtual methods
.method public fragmentToByteArray()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->fragmentedBytes:[B

    return-object v0
.end method

.method public getFragmentLength()I
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->fragmentedBytes:[B

    array-length v0, v0

    return v0
.end method

.method public getFragmentOffset()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->fragmentOffset:I

    return v0
.end method

.method protected getImplementationTypePrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Fragmented "

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->messageLength:I

    return v0
.end method

.method public getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->type:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Fragment Offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getFragmentOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Fragment Length: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getFragmentLength()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

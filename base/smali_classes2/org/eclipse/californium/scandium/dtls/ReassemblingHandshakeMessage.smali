.class public final Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;
.super Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;
.source "ReassemblingHandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;
    }
.end annotation


# instance fields
.field private final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;",
            ">;"
        }
    .end annotation
.end field

.field private final reassembledBytes:[B


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;)V
    .locals 4

    .line 120
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->fragments:Ljava/util/List;

    .line 121
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getMessageSeq()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->setMessageSeq(I)V

    .line 122
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getMessageLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->reassembledBytes:[B

    .line 123
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getFragmentOffset()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getFragmentLength()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;-><init>(IILorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$1;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0, p1}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->add(IILorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;)V

    return-void
.end method

.method private add(IILorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->fragments:Ljava/util/List;

    invoke-interface {v0, p1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 230
    invoke-virtual {p4}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->fragmentToByteArray()[B

    move-result-object p1

    iget-object p4, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->reassembledBytes:[B

    invoke-static {p3}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$100(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v0

    invoke-static {p3}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$500(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result p3

    invoke-static {p1, p2, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;)V
    .locals 7

    .line 150
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    const-string v2, "!"

    const-string v3, " differs from "

    if-ne v0, v1, :cond_b

    .line 153
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->getMessageSeq()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getMessageSeq()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 156
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->getMessageLength()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getMessageLength()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 160
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getFragmentOffset()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getFragmentLength()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;-><init>(IILorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$1;)V

    .line 165
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->getMessageLength()I

    move-result v1

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$200(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v2

    if-lt v1, v2, :cond_8

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 171
    :goto_0
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->fragments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 172
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->fragments:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;

    .line 173
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$100(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v5

    invoke-static {v4}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$100(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 174
    invoke-static {v4}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$100(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v5

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$200(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$200(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v5

    invoke-static {v4}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$200(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v6

    if-gt v5, v6, :cond_4

    .line 177
    invoke-static {v4}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$100(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$300(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;I)V

    goto :goto_1

    .line 180
    :cond_1
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$200(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v5

    invoke-static {v4}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$200(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v6

    if-gt v5, v6, :cond_2

    return-void

    .line 185
    :cond_2
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$100(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v5

    invoke-static {v4}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$100(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v6

    if-ne v5, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    :cond_3
    invoke-static {v4}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$200(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_4
    :goto_1
    invoke-static {v0, v3}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$400(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;I)I

    move-result v3

    .line 196
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$500(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v4

    if-nez v4, :cond_5

    return-void

    .line 201
    :cond_5
    invoke-direct {p0, v2, v3, v0, p1}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->add(IILorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;)V

    .line 202
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->fragments:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;

    const/4 v0, 0x1

    move-object v1, p1

    move p1, v0

    .line 204
    :goto_2
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->fragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_7

    .line 205
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->fragments:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;

    .line 206
    invoke-static {v2}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$100(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v3

    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$200(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v4

    if-gt v3, v4, :cond_6

    .line 209
    invoke-static {v2}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$200(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$600(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;I)V

    .line 210
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->fragments:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_6
    move-object v1, v2

    :goto_3
    add-int/2addr p1, v0

    goto :goto_2

    :cond_7
    return-void

    .line 166
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$200(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes exceeds message "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->getMessageLength()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment message length "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getMessageLength()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->getMessageLength()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment message sequence number "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getMessageSeq()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->getMessageSeq()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment message type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fragmentToByteArray()[B
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->reassembledBytes:[B

    return-object v0
.end method

.method protected getImplementationTypePrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Reassembling "

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->reassembledBytes:[B

    array-length v0, v0

    return v0
.end method

.method getRanges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->fragments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isComplete()Z
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->fragments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;

    .line 134
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$100(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->getMessageLength()I

    move-result v2

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;->access$200(Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;)I

    move-result v0

    if-gt v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    .line 248
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Reassembled Fragments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->fragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->fragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage$FragmentRange;

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

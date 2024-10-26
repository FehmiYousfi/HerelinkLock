.class public final Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;
.super Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal;
.source "PreSharedKeyIdentity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal<",
        "Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;",
        ">;"
    }
.end annotation


# instance fields
.field private final identity:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final scopedIdentity:Z

.field private final virtualHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, v1, v0, p1, v0}, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;-><init>(ZLjava/lang/String;Ljava/lang/String;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;-><init>(ZLjava/lang/String;Ljava/lang/String;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V
    .locals 0

    .line 103
    invoke-direct {p0, p5}, Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal;-><init>(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    .line 104
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->scopedIdentity:Z

    .line 105
    iput-object p2, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->virtualHost:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->identity:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->name:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V
    .locals 0

    .line 73
    invoke-direct {p0, p4}, Lorg/eclipse/californium/elements/auth/AbstractExtensiblePrincipal;-><init>(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    if-eqz p3, :cond_4

    .line 77
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->scopedIdentity:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_0

    .line 81
    iput-object p4, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->virtualHost:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/StringUtil;->isValidHostName(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 83
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->virtualHost:Ljava/lang/String;

    .line 84
    iget-object p2, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->virtualHost:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p2, ":"

    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->name:Ljava/lang/String;

    goto :goto_1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "virtual host is not a valid hostname"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p2, :cond_3

    .line 95
    iput-object p4, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->virtualHost:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->name:Ljava/lang/String;

    .line 98
    :goto_1
    iput-object p3, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->identity:Ljava/lang/String;

    return-void

    .line 93
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "virtual host is not supported, if sni is disabled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Identity must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic amend(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)Ljava/security/Principal;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->amend(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;

    move-result-object p1

    return-object p1
.end method

.method public amend(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;
    .locals 7

    .line 115
    new-instance v6, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;

    iget-boolean v1, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->scopedIdentity:Z

    iget-object v2, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->virtualHost:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->identity:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->name:Ljava/lang/String;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/californium/elements/auth/AdditionalInfo;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 197
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 200
    :cond_2
    check-cast p1, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;

    .line 201
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualHost()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->virtualHost:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isScopedIdentity()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->scopedIdentity:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 171
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->scopedIdentity:Z

    const-string v1, "]"

    const-string v2, "PreSharedKey Identity ["

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "virtual host: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->virtualHost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", identity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->identity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "identity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->identity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

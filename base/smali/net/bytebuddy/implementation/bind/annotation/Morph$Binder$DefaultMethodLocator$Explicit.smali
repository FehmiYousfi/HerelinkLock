.class public Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator$Explicit;
.super Ljava/lang/Object;
.source "Morph.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation


# instance fields
.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator$Explicit;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 250
    instance-of p1, p1, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator$Explicit;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 250
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator$Explicit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator$Explicit;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator$Explicit;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator$Explicit;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator$Explicit;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 250
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator$Explicit;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 1

    .line 270
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator$Explicit;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Morph$Binder$DefaultMethodLocator$Explicit;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1, p2, v0}, Lnet/bytebuddy/implementation/Implementation$Target;->invokeDefault(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object p1

    return-object p1

    .line 271
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " method carries default method call parameter on non-interface type"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class public Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;
.super Ljava/lang/Object;
.source "MethodDelegationBinder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unique"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final identificationToken:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "TT;)V"
        }
    .end annotation

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 255
    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->identificationToken:Ljava/lang/Object;

    return-void
.end method

.method public static of(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Object;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "TS;)",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique<",
            "TS;>;"
        }
    .end annotation

    .line 267
    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    .line 282
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 234
    instance-of p1, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 234
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->getIdentificationToken()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->getIdentificationToken()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public getIdentificationToken()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->identificationToken:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 234
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->getIdentificationToken()Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Unique;->delegate:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method

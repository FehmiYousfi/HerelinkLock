.class public Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;
.super Ljava/lang/Object;
.source "DefaultMethod.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DelegationMethod"
.end annotation


# instance fields
.field private final cached:Z

.field private final specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;Z)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    .line 212
    iput-boolean p2, p0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;->cached:Z

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 3

    .line 222
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    sget-object v1, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->PUBLIC:Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    invoke-interface {p2, v0, v1}, Lnet/bytebuddy/implementation/Implementation$Context;->registerAccessorFor(Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->forMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;

    move-result-object v0

    .line 224
    iget-boolean v1, p0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;->cached:Z

    if-eqz v1, :cond_0

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v2, Ljava/lang/reflect/Method;

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    .line 225
    invoke-interface {p2, v0, v1}, Lnet/bytebuddy/implementation/Implementation$Context;->cache(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 226
    :cond_0
    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 191
    instance-of p1, p1, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 191
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

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
    iget-boolean v1, p0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;->cached:Z

    iget-boolean p1, p1, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;->cached:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 191
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;->cached:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4f

    goto :goto_1

    :cond_1
    const/16 v1, 0x61

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$DelegationMethod;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->isValid()Z

    move-result v0

    return v0
.end method

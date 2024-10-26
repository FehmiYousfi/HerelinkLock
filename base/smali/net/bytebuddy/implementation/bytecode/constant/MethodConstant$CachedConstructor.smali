.class public Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;
.super Ljava/lang/Object;
.source "MethodConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CachedConstructor"
.end annotation


# static fields
.field private static final CONSTRUCTOR_TYPE:Lnet/bytebuddy/description/type/TypeDescription;


# instance fields
.field private final constructorConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 268
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Ljava/lang/reflect/Constructor;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;->CONSTRUCTOR_TYPE:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;->constructorConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 2

    .line 291
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;->constructorConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;->CONSTRUCTOR_TYPE:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p2, v0, v1}, Lnet/bytebuddy/implementation/Implementation$Context;->cache(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 293
    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 262
    instance-of p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 262
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;->constructorConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;->constructorConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

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

    .line 262
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;->constructorConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

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

.method public isValid()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;->constructorConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method

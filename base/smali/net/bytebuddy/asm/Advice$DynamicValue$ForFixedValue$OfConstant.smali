.class public Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;
.super Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfConstant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue<",
        "Ljava/lang/annotation/Annotation;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 7797
    invoke-direct {p0}, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue;-><init>()V

    .line 7798
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 7784
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;

    return p1
.end method

.method protected doResolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 7808
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7810
    :cond_0
    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_1

    .line 7811
    new-instance p2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    check-cast p1, Ljava/lang/Class;

    invoke-direct {p2, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object p2

    .line 7812
    :cond_1
    sget-object p1, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/type/TypeDescription;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7813
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

    invoke-static {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p1

    return-object p1

    .line 7814
    :cond_2
    sget-object p1, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/type/TypeDescription;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7815
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

    invoke-static {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object p1

    return-object p1

    .line 7817
    :cond_3
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7784
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

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

    .line 7784
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

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

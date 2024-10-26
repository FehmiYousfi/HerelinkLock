.class public Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfAnnotationProperty;
.super Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfAnnotationProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue<",
        "Ljava/lang/annotation/Annotation;",
        ">;"
    }
.end annotation


# instance fields
.field private final property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 0

    .line 7838
    invoke-direct {p0}, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue;-><init>()V

    .line 7839
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfAnnotationProperty;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method protected static of(Ljava/lang/Class;Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$DynamicValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/asm/Advice$DynamicValue<",
            "TT;>;"
        }
    .end annotation

    .line 7852
    new-instance v0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfAnnotationProperty;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v1, p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p0

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-direct {v0, p0}, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfAnnotationProperty;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 7825
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfAnnotationProperty;

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

    .line 7862
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfAnnotationProperty;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p4, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7825
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfAnnotationProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfAnnotationProperty;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfAnnotationProperty;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfAnnotationProperty;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfAnnotationProperty;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

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

    .line 7825
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$DynamicValue$ForFixedValue$OfAnnotationProperty;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

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

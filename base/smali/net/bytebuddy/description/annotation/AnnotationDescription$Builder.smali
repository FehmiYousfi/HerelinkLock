.class public Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
.super Ljava/lang/Object;
.source "AnnotationDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final annotationType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final annotationValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;)V"
        }
    .end annotation

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 813
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

    return-void
.end method

.method public static ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 823
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->ofType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static ofType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 3

    .line 833
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V

    return-object v0

    .line 834
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an annotation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .locals 4

    .line 1247
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    .line 1248
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1249
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value or default value defined for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1252
    :cond_2
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V

    return-object v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 792
    instance-of p1, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    return p1
.end method

.method public define(Ljava/lang/String;B)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1062
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(B)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;C)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1073
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(C)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;D)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1128
    invoke-static {p2, p3}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(D)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;F)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1117
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(F)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;I)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1095
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(I)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;J)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1106
    invoke-static {p2, p3}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(J)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 926
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;Ljava/lang/Enum;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 869
    new-instance v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1139
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1

    .line 904
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1

    .line 915
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;-><init>(Lnet/bytebuddy/description/annotation/AnnotationDescription;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 848
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 850
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription;->isAnnotationValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 853
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 854
    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 855
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 858
    new-instance p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    iget-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {p1, p2, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V

    return-object p1

    .line 856
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property already defined: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 851
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be assigned to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not define a property named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public define(Ljava/lang/String;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 893
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;->of(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 938
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1

    .line 881
    new-instance v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;

    invoke-direct {v0, p2, p3}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;S)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1084
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(S)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Ljava/lang/String;Z)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1051
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(Z)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineAnnotationArray(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[TT;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 1003
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    new-instance p2, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {p2, p3}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    array-length p3, p3

    new-array p3, p3, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 1005
    invoke-virtual {p2, p3}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 1003
    invoke-virtual {p0, p1, v0, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->defineAnnotationArray(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineAnnotationArray(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1017
    invoke-static {p2, p3}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->of(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineArray(Ljava/lang/String;[B)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1161
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([B)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineArray(Ljava/lang/String;[C)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1172
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([C)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineArray(Ljava/lang/String;[D)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1227
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([D)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineArray(Ljava/lang/String;[F)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1216
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([F)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineArray(Ljava/lang/String;[I)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1194
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([I)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineArray(Ljava/lang/String;[J)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1205
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([J)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineArray(Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1238
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineArray(Ljava/lang/String;[S)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1183
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([S)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineArray(Ljava/lang/String;[Z)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1150
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([Z)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineEnumerationArray(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Enum;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[TT;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 952
    array-length v0, p3

    new-array v0, v0, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    .line 954
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p3, v2

    add-int/lit8 v5, v3, 0x1

    .line 955
    new-instance v6, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    invoke-direct {v6, v4}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    aput-object v6, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    .line 957
    :cond_0
    new-instance p3, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {p3, p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, p3, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->defineEnumerationArray(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineEnumerationArray(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 4

    .line 969
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 972
    array-length v0, p3

    new-array v0, v0, [Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    const/4 v1, 0x0

    .line 973
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 974
    new-instance v2, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;

    aget-object v3, p3, v1

    invoke-direct {v2, p2, v3}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 976
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->defineEnumerationArray(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1

    .line 970
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not an enumeration type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs defineEnumerationArray(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 989
    invoke-static {p2, p3}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->of(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineTypeArray(Ljava/lang/String;[Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;"
        }
    .end annotation

    .line 1028
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    array-length p2, p2

    new-array p2, p2, [Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->defineTypeArray(Ljava/lang/String;[Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs defineTypeArray(Ljava/lang/String;[Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;
    .locals 0

    .line 1040
    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;->of([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->define(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 792
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

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
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

    iget-object p1, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

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

.method public hashCode()I
    .locals 4

    .line 792
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

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

    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;->annotationValues:Ljava/util/Map;

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

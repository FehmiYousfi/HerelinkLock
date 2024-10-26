.class public Lnet/bytebuddy/ByteBuddy;
.super Ljava/lang/Object;
.source "ByteBuddy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;
    }
.end annotation


# static fields
.field private static final BYTE_BUDDY_DEFAULT_PREFIX:Ljava/lang/String; = "ByteBuddy"

.field private static final BYTE_BUDDY_DEFAULT_SUFFIX:Ljava/lang/String; = "auxiliary"


# instance fields
.field protected final annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

.field protected final annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

.field protected final auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

.field protected final classFileVersion:Lnet/bytebuddy/ClassFileVersion;

.field protected final ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected final implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

.field protected final instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

.field protected final methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

.field protected final namingStrategy:Lnet/bytebuddy/NamingStrategy;

.field protected final typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/ClassFileVersion;)V
    .locals 11

    .line 168
    new-instance v2, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;

    const-string v0, "ByteBuddy"

    invoke-direct {v2, v0}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;)V

    new-instance v3, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$SuffixingRandom;

    const-string v0, "auxiliary"

    invoke-direct {v3, v0}, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;)V

    sget-object v4, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;->APPEND_DEFAULTS:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    sget-object v5, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->ENABLED:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    sget-object v6, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;

    sget-object v7, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    sget-object v8, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->MODIFIABLE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    sget-object v9, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->ENABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    new-instance v10, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    .line 177
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isSynthetic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isDefaultFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-direct {v10, v0}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    move-object v0, p0

    move-object v1, p1

    .line 168
    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/NamingStrategy;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 205
    iput-object p2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    .line 206
    iput-object p3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    .line 207
    iput-object p4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    .line 208
    iput-object p5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    .line 209
    iput-object p6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    .line 210
    iput-object p7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    .line 211
    iput-object p8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    .line 212
    iput-object p10, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    .line 213
    iput-object p9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 84
    instance-of p1, p1, Lnet/bytebuddy/ByteBuddy;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 84
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/ByteBuddy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/ByteBuddy;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/ByteBuddy;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

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
    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_6
    return v2

    :cond_10
    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    if-nez v1, :cond_11

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :goto_7
    return v2

    :cond_12
    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    if-nez v1, :cond_13

    if-eqz v3, :cond_14

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_8
    return v2

    :cond_14
    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object p1, p1, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    if-nez v1, :cond_15

    if-eqz p1, :cond_16

    goto :goto_9

    :cond_15
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    :goto_9
    return v2

    :cond_16
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 84
    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

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

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    mul-int/2addr v0, v2

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    mul-int/2addr v0, v2

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    mul-int/2addr v0, v2

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    mul-int/2addr v0, v2

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    mul-int/2addr v0, v2

    if-nez v3, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    return v0
.end method

.method public ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/ByteBuddy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/ByteBuddy;"
        }
    .end annotation

    .line 1054
    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    invoke-direct {v0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/ByteBuddy;->ignore(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p1

    return-object p1
.end method

.method public ignore(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/ByteBuddy;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/ByteBuddy;"
        }
    .end annotation

    .line 1069
    new-instance v11, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    move-object v0, v11

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v11
.end method

.method public makeAnnotation()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 558
    new-instance v11, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->ANNOTATION:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v1, v2}, Lnet/bytebuddy/NamingStrategy;->subclass(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    sget-object v3, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lnet/bytebuddy/description/modifier/TypeManifestation;->ANNOTATION:Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 559
    invoke-static {v2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve()I

    move-result v2

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 558
    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    new-array v2, v5, [Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;->ANNOTATION:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    .line 560
    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    sget-object v10, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    return-object v11
.end method

.method public makeEnumeration(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "+",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 601
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    const-class v1, Ljava/lang/Enum;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/reflect/Type;

    const-class v4, Lnet/bytebuddy/dynamic/TargetType;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->parameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->build()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    .line 605
    new-instance v3, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object v4, v0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    invoke-interface {v6, v1}, Lnet/bytebuddy/NamingStrategy;->subclass(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    sget-object v8, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v8, v7, v5

    sget-object v8, Lnet/bytebuddy/description/modifier/TypeManifestation;->FINAL:Lnet/bytebuddy/description/modifier/TypeManifestation;

    aput-object v8, v7, v2

    sget-object v8, Lnet/bytebuddy/description/modifier/EnumerationState;->ENUMERATION:Lnet/bytebuddy/description/modifier/EnumerationState;

    const/4 v15, 0x2

    aput-object v8, v7, v15

    .line 606
    invoke-static {v7}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object v7

    invoke-virtual {v7}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve()I

    move-result v7

    .line 605
    invoke-interface {v4, v6, v7, v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v9, v0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v10, v0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v11, v0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v12, v0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v13, v0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v14, v0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v4, v0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    sget-object v16, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    move-object v6, v3

    move-object v15, v4

    invoke-direct/range {v6 .. v16}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    new-array v4, v2, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v6, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v6, v4, v5

    .line 617
    invoke-virtual {v3, v4}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;->defineConstructor([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v3

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/reflect/Type;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v3

    sget-object v6, Lnet/bytebuddy/implementation/SuperMethodCall;->INSTANCE:Lnet/bytebuddy/implementation/SuperMethodCall;

    .line 618
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v3

    const-class v6, Lnet/bytebuddy/dynamic/TargetType;

    new-array v7, v4, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v8, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v8, v7, v5

    sget-object v8, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    aput-object v8, v7, v2

    const-string v8, "valueOf"

    .line 619
    invoke-interface {v3, v8, v6, v7}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/reflect/Type;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v5

    .line 621
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v3

    .line 622
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    .line 623
    invoke-static {v8}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v5

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v7}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments([Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v1, v6}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    .line 622
    invoke-static {v1}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v1

    .line 624
    invoke-virtual {v1}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->withOwnType()Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v1

    new-array v6, v2, [I

    aput v5, v6, v5

    invoke-virtual {v1, v6}, Lnet/bytebuddy/implementation/MethodCall;->withArgument([I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v1

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v7, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 625
    invoke-virtual {v1, v6, v7}, Lnet/bytebuddy/implementation/MethodCall;->withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object v1

    .line 622
    invoke-interface {v3, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v1

    const-class v3, [Lnet/bytebuddy/dynamic/TargetType;

    new-array v4, v4, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v6, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v6, v4, v5

    sget-object v5, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    aput-object v5, v4, v2

    const-string v2, "values"

    .line 626
    invoke-interface {v1, v2, v3, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3}, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;-><init>(Ljava/util/List;)V

    .line 629
    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v1

    return-object v1

    .line 602
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Require at least one enumeration constant"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs makeEnumeration([Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "+",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    .line 585
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->makeEnumeration(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public makeInterface()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 404
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public makeInterface(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 425
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public makeInterface(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 513
    const-class v0, Ljava/lang/Object;

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    sget-object v1, Lnet/bytebuddy/description/modifier/TypeManifestation;->INTERFACE:Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->modifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public makeInterface(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 469
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs makeInterface([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 447
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs makeInterface([Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 491
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public makePackage(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 531
    new-instance v11, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "package-info"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const/16 v2, 0x1600

    invoke-interface {v0, p1, v2, v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    sget-object v10, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    return-object v11
.end method

.method public rebase(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 727
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/ByteBuddy;->rebase(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 748
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 763
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p2, p3}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Ljava/lang/Package;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Package;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 823
    new-instance v0, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;-><init>(Ljava/lang/Package;)V

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/PackageDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Lnet/bytebuddy/description/type/PackageDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/PackageDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 836
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForPackageDescription;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForPackageDescription;-><init>(Lnet/bytebuddy/description/type/PackageDescription;)V

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 784
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Suffixing;->withRandomSuffix()Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    .line 799
    new-instance v14, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;

    iget-object v1, v0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    move-object/from16 v11, p1

    invoke-interface {v1, v11}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->represent(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v2

    iget-object v3, v0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v4, v0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v5, v0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v7, v0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v8, v0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v9, v0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, v0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v1, v14

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v13}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)V

    return-object v14
.end method

.method public redefine(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 654
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/ByteBuddy;->redefine(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public redefine(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 676
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/ByteBuddy;->redefine(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public redefine(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 698
    new-instance v12, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->represent(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v12

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-object v12
.end method

.method public subclass(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 240
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 263
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 291
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Ljava/lang/reflect/Type;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 315
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 343
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->IMITATE_SUPER_CLASS_OPENING:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 369
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isFinal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isInterface()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 372
    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 373
    new-instance v5, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    new-array v6, v4, [Lnet/bytebuddy/description/type/TypeDefinition;

    aput-object v1, v6, v3

    invoke-direct {v5, v6}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    .line 376
    new-instance v5, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v5}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    .line 378
    :goto_0
    new-instance v17, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v7, v0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v8

    invoke-interface {v7, v8}, Lnet/bytebuddy/NamingStrategy;->subclass(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    sget-object v9, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v9, v8, v3

    sget-object v3, Lnet/bytebuddy/description/modifier/TypeManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;

    aput-object v3, v8, v4

    .line 379
    invoke-static {v8}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getModifiers()I

    move-result v1

    invoke-virtual {v3, v1}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve(I)I

    move-result v1

    .line 378
    invoke-interface {v6, v7, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v1

    .line 380
    invoke-interface {v1, v5}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v9, v0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v10, v0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v11, v0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v12, v0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v13, v0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v14, v0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v15, v0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object/from16 v6, v17

    move-object/from16 v16, p2

    invoke-direct/range {v6 .. v16}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    return-object v17

    .line 370
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot subclass primitive, array or final types: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public with(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ByteBuddy;
    .locals 12

    .line 849
    new-instance v11, Lnet/bytebuddy/ByteBuddy;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v11
.end method

.method public with(Lnet/bytebuddy/NamingStrategy;)Lnet/bytebuddy/ByteBuddy;
    .locals 12

    .line 871
    new-instance v11, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v11

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v11
.end method

.method public with(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;)Lnet/bytebuddy/ByteBuddy;
    .locals 12

    .line 1011
    new-instance v11, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v11

    move-object v8, p1

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v11
.end method

.method public with(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/ByteBuddy;
    .locals 12

    .line 991
    new-instance v11, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v11

    move-object v7, p1

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v11
.end method

.method public with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;
    .locals 12

    .line 1033
    new-instance v11, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v11

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v11
.end method

.method public with(Lnet/bytebuddy/implementation/Implementation$Context$Factory;)Lnet/bytebuddy/ByteBuddy;
    .locals 12

    .line 967
    new-instance v11, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v11

    move-object v6, p1

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v11
.end method

.method public with(Lnet/bytebuddy/implementation/attribute/AnnotationRetention;)Lnet/bytebuddy/ByteBuddy;
    .locals 12

    .line 943
    new-instance v11, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v11

    move-object v5, p1

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v11
.end method

.method public with(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)Lnet/bytebuddy/ByteBuddy;
    .locals 12

    .line 914
    new-instance v11, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v11

    move-object v4, p1

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v11
.end method

.method public with(Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;)Lnet/bytebuddy/ByteBuddy;
    .locals 12

    .line 892
    new-instance v11, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v11

    move-object v3, p1

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v11
.end method

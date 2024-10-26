.class public Lorg/mockito/internal/configuration/IndependentAnnotationEngine;
.super Ljava/lang/Object;
.source "IndependentAnnotationEngine.java"

# interfaces
.implements Lorg/mockito/plugins/AnnotationEngine;
.implements Lorg/mockito/configuration/AnnotationEngine;


# instance fields
.field private final annotationProcessorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lorg/mockito/internal/configuration/FieldAnnotationProcessor<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->annotationProcessorMap:Ljava/util/Map;

    .line 33
    const-class v0, Lorg/mockito/Mock;

    new-instance v1, Lorg/mockito/internal/configuration/MockAnnotationProcessor;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/MockAnnotationProcessor;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->registerAnnotationProcessor(Ljava/lang/Class;Lorg/mockito/internal/configuration/FieldAnnotationProcessor;)V

    .line 34
    const-class v0, Lorg/mockito/Captor;

    new-instance v1, Lorg/mockito/internal/configuration/CaptorAnnotationProcessor;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/CaptorAnnotationProcessor;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->registerAnnotationProcessor(Ljava/lang/Class;Lorg/mockito/internal/configuration/FieldAnnotationProcessor;)V

    return-void
.end method

.method private createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->forAnnotation(Ljava/lang/annotation/Annotation;)Lorg/mockito/internal/configuration/FieldAnnotationProcessor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/mockito/internal/configuration/FieldAnnotationProcessor;->process(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private forAnnotation(Ljava/lang/annotation/Annotation;)Lorg/mockito/internal/configuration/FieldAnnotationProcessor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(TA;)",
            "Lorg/mockito/internal/configuration/FieldAnnotationProcessor<",
            "TA;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->annotationProcessorMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->annotationProcessorMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mockito/internal/configuration/FieldAnnotationProcessor;

    return-object p1

    .line 45
    :cond_0
    new-instance p1, Lorg/mockito/internal/configuration/IndependentAnnotationEngine$1;

    invoke-direct {p1, p0}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine$1;-><init>(Lorg/mockito/internal/configuration/IndependentAnnotationEngine;)V

    return-object p1
.end method

.method private registerAnnotationProcessor(Ljava/lang/Class;Lorg/mockito/internal/configuration/FieldAnnotationProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;",
            "Lorg/mockito/internal/configuration/FieldAnnotationProcessor<",
            "TA;>;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->annotationProcessorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 59
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 61
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    move v7, v6

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v8, v4, v6

    .line 62
    invoke-direct {p0, v8, v3}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->createMockFor(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 64
    invoke-virtual {p0, v3, v7}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->throwIfAlreadyAssigned(Ljava/lang/reflect/Field;Z)V

    .line 67
    :try_start_0
    invoke-static {p2, v3, v9}, Lorg/mockito/internal/util/reflection/FieldSetter;->setField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 69
    new-instance p2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problems setting field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " annotated with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method throwIfAlreadyAssigned(Ljava/lang/reflect/Field;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->moreThanOneAnnotationNotAllowed(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

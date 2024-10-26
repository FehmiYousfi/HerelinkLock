.class public Lorg/mockito/internal/configuration/InjectingAnnotationEngine;
.super Ljava/lang/Object;
.source "InjectingAnnotationEngine.java"

# interfaces
.implements Lorg/mockito/plugins/AnnotationEngine;
.implements Lorg/mockito/configuration/AnnotationEngine;


# instance fields
.field private final delegate:Lorg/mockito/plugins/AnnotationEngine;

.field private final spyAnnotationEngine:Lorg/mockito/plugins/AnnotationEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/IndependentAnnotationEngine;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->delegate:Lorg/mockito/plugins/AnnotationEngine;

    .line 22
    new-instance v0, Lorg/mockito/internal/configuration/SpyAnnotationEngine;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/SpyAnnotationEngine;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->spyAnnotationEngine:Lorg/mockito/plugins/AnnotationEngine;

    return-void
.end method

.method private processIndependentAnnotations(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 55
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->delegate:Lorg/mockito/plugins/AnnotationEngine;

    invoke-interface {v0, p1, p2}, Lorg/mockito/plugins/AnnotationEngine;->process(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->spyAnnotationEngine:Lorg/mockito/plugins/AnnotationEngine;

    invoke-interface {v0, p1, p2}, Lorg/mockito/plugins/AnnotationEngine;->process(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processInjectMocks(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 47
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 48
    invoke-virtual {p0, p2}, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->injectMocks(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public injectMocks(Ljava/lang/Object;)V
    .locals 4

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 78
    invoke-static {v2}, Lorg/mockito/internal/util/collections/Sets;->newMockSafeHashSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 80
    :goto_0
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_0

    .line 81
    new-instance v3, Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;

    invoke-direct {v3, v0}, Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v3, v1}, Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;->addTo(Ljava/util/Set;)V

    .line 82
    new-instance v3, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;

    invoke-direct {v3, p1, v0}, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v3, v2}, Lorg/mockito/internal/configuration/injection/scanner/MockScanner;->addPreparedMocks(Ljava/util/Set;)V

    .line 83
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->onInjection(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lorg/mockito/internal/configuration/DefaultInjectionEngine;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/DefaultInjectionEngine;-><init>()V

    invoke-virtual {v0, v1, v2, p1}, Lorg/mockito/internal/configuration/DefaultInjectionEngine;->injectMocksOnFields(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)V

    return-void
.end method

.method protected onInjection(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public process(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->processIndependentAnnotations(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;->processInjectMocks(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

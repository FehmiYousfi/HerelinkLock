.class public Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;
.super Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
.source "PropertyAndSetterInjection.java"


# instance fields
.field private final mockCandidateFilter:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

.field private final notFinalOrStatic:Lorg/mockito/internal/util/collections/ListUtil$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;-><init>()V

    .line 67
    new-instance v0, Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;

    new-instance v1, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;

    new-instance v2, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter;

    invoke-direct {v2}, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter;-><init>()V

    invoke-direct {v1, v2}, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;-><init>(Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;)V

    invoke-direct {v0, v1}, Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;-><init>(Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;)V

    iput-object v0, p0, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->mockCandidateFilter:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    .line 72
    new-instance v0, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection$1;-><init>(Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;)V

    iput-object v0, p0, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->notFinalOrStatic:Lorg/mockito/internal/util/collections/ListUtil$Filter;

    return-void
.end method

.method private initializeInjectMocksField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/FieldInitializationReport;
    .locals 1

    .line 95
    :try_start_0
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldInitializer;

    invoke-direct {v0, p2, p1}, Lorg/mockito/internal/util/reflection/FieldInitializer;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/FieldInitializer;->initialize()Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    move-result-object p1
    :try_end_0
    .catch Lorg/mockito/exceptions/base/MockitoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 97
    invoke-virtual {p2}, Lorg/mockito/exceptions/base/MockitoException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p2}, Lorg/mockito/exceptions/base/MockitoException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 99
    invoke-static {p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->fieldInitialisationThrewException(Ljava/lang/reflect/Field;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/mockito/exceptions/base/MockitoException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->cannotInitializeForInjectMocksAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

.method private injectMockCandidates(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->orderedInstanceFieldsFrom(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p3, p2, v0, p1}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->injectMockCandidatesOnFields(Ljava/util/Set;Ljava/lang/Object;ZLjava/util/List;)Z

    move-result v0

    .line 112
    invoke-direct {p0, p3, p2, v0, p1}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->injectMockCandidatesOnFields(Ljava/util/Set;Ljava/lang/Object;ZLjava/util/List;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method private injectMockCandidatesOnFields(Ljava/util/Set;Ljava/lang/Object;ZLjava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)Z"
        }
    .end annotation

    .line 120
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 122
    iget-object v2, p0, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->mockCandidateFilter:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    invoke-interface {v2, p1, v1, p4, p2}, Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;->filterCandidate(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;

    move-result-object v1

    invoke-interface {v1}, Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;->thenInject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    or-int/lit8 p3, p3, 0x1

    .line 126
    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return p3
.end method

.method private orderedInstanceFieldsFrom(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->notFinalOrStatic:Lorg/mockito/internal/util/collections/ListUtil$Filter;

    invoke-static {p1, v0}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object p1

    .line 137
    invoke-static {p1}, Lorg/mockito/internal/util/reflection/SuperTypesLastSorter;->sortSuperTypesLast(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->initializeInjectMocksField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lorg/mockito/internal/util/reflection/FieldInitializationReport;->fieldClass()Ljava/lang/Class;

    move-result-object p2

    .line 85
    invoke-virtual {p1}, Lorg/mockito/internal/util/reflection/FieldInitializationReport;->fieldInstance()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 86
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq p2, v1, :cond_0

    .line 87
    invoke-static {p3}, Lorg/mockito/internal/util/collections/Sets;->newMockSafeHashSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p2, p1, v1}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;->injectMockCandidates(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Set;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 88
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_0
    return v0
.end method

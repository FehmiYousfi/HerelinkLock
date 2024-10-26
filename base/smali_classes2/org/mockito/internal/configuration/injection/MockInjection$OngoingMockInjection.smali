.class public Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;
.super Ljava/lang/Object;
.source "MockInjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/configuration/injection/MockInjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OngoingMockInjection"
.end annotation


# instance fields
.field private final fieldOwner:Ljava/lang/Object;

.field private final fields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final injectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

.field private final mocks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final postInjectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 0

    .line 62
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/mockito/internal/configuration/injection/MockInjection$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->fields:Ljava/util/Set;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Lorg/mockito/internal/util/collections/Sets;->newMockSafeHashSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->mocks:Ljava/util/Set;

    .line 58
    invoke-static {}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->nop()Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->injectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    .line 59
    invoke-static {}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->nop()Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->postInjectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    const-string v0, "fieldOwner"

    .line 66
    invoke-static {p2, v0}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->fieldOwner:Ljava/lang/Object;

    .line 67
    iget-object p2, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->fields:Ljava/util/Set;

    const-string v0, "fields"

    invoke-static {p1, v0}, Lorg/mockito/internal/util/Checks;->checkItemsNotNull(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Ljava/lang/Object;Lorg/mockito/internal/configuration/injection/MockInjection$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 5

    .line 91
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->fields:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 92
    iget-object v2, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->injectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    iget-object v3, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->fieldOwner:Ljava/lang/Object;

    iget-object v4, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->mocks:Ljava/util/Set;

    invoke-virtual {v2, v1, v3, v4}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->process(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z

    .line 93
    iget-object v2, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->postInjectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    iget-object v3, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->fieldOwner:Ljava/lang/Object;

    iget-object v4, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->mocks:Ljava/util/Set;

    invoke-virtual {v2, v1, v3, v4}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->process(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleSpyAnnotation()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->postInjectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    new-instance v1, Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;-><init>()V

    invoke-virtual {v0, v1}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->thenTry(Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;)Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    return-object p0
.end method

.method public tryConstructorInjection()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->injectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    new-instance v1, Lorg/mockito/internal/configuration/injection/ConstructorInjection;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/injection/ConstructorInjection;-><init>()V

    invoke-virtual {v0, v1}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->thenTry(Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;)Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    return-object p0
.end method

.method public tryPropertyOrFieldInjection()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->injectionStrategies:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    new-instance v1, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/injection/PropertyAndSetterInjection;-><init>()V

    invoke-virtual {v0, v1}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->thenTry(Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;)Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    return-object p0
.end method

.method public withMocks(Ljava/util/Set;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->mocks:Ljava/util/Set;

    const-string v1, "mocks"

    invoke-static {p1, v1}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

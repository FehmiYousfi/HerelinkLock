.class public abstract Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
.super Ljava/lang/Object;
.source "MockInjectionStrategy.java"


# instance fields
.field private nextStrategy:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nop()Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
    .locals 1

    .line 20
    new-instance v0, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy$1;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy$1;-><init>()V

    return-object v0
.end method

.method private relayProcessToNextStrategy(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 1
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

    .line 89
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->nextStrategy:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->process(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public process(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 1
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

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 71
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->relayProcessToNextStrategy(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method protected abstract processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z
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
.end method

.method public thenTry(Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;)Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->nextStrategy:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->thenTry(Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;)Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    goto :goto_0

    .line 44
    :cond_0
    iput-object p1, p0, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->nextStrategy:Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;

    :goto_0
    return-object p1
.end method

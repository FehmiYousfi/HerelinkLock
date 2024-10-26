.class public Lorg/mockito/internal/configuration/DefaultInjectionEngine;
.super Ljava/lang/Object;
.source "DefaultInjectionEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public injectMocksOnFields(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-static {p1, p3}, Lorg/mockito/internal/configuration/injection/MockInjection;->onFields(Ljava/util/Set;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->withMocks(Ljava/util/Set;)Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->tryConstructorInjection()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->tryPropertyOrFieldInjection()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->handleSpyAnnotation()Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mockito/internal/configuration/injection/MockInjection$OngoingMockInjection;->apply()V

    return-void
.end method

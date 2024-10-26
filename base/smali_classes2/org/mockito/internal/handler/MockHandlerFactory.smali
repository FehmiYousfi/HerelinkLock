.class public Lorg/mockito/internal/handler/MockHandlerFactory;
.super Ljava/lang/Object;
.source "MockHandlerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMockHandler(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/InternalMockHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)",
            "Lorg/mockito/internal/InternalMockHandler<",
            "TT;>;"
        }
    .end annotation

    .line 16
    new-instance v0, Lorg/mockito/internal/handler/MockHandlerImpl;

    invoke-direct {v0, p0}, Lorg/mockito/internal/handler/MockHandlerImpl;-><init>(Lorg/mockito/mock/MockCreationSettings;)V

    .line 17
    new-instance v1, Lorg/mockito/internal/handler/NullResultGuardian;

    invoke-direct {v1, v0}, Lorg/mockito/internal/handler/NullResultGuardian;-><init>(Lorg/mockito/internal/InternalMockHandler;)V

    .line 18
    new-instance v0, Lorg/mockito/internal/handler/InvocationNotifierHandler;

    invoke-direct {v0, v1, p0}, Lorg/mockito/internal/handler/InvocationNotifierHandler;-><init>(Lorg/mockito/internal/InternalMockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    return-object v0
.end method

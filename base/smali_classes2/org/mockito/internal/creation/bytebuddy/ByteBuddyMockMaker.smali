.class public Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;
.super Ljava/lang/Object;
.source "ByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;


# instance fields
.field private defaultByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->defaultByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;

    return-void
.end method


# virtual methods
.method public createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Lorg/mockito/invocation/MockHandler;",
            ")TT;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->defaultByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;

    invoke-interface {v0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;->createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->defaultByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;

    invoke-interface {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;->createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->defaultByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;

    invoke-interface {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;->getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object p1

    return-object p1
.end method

.method public isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/plugins/MockMaker$TypeMockability;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->defaultByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;

    invoke-interface {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;->isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;

    move-result-object p1

    return-object p1
.end method

.method public resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->defaultByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;

    invoke-interface {v0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;->resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    return-void
.end method
